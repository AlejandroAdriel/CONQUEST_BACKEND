CREATE OR REPLACE FUNCTION reclutar_tropas(
    p_jugador_id    INT,
    p_costo_oro     INT,
    p_infanteria    INT DEFAULT 0,
    p_caballeria    INT DEFAULT 0,
    p_artilleria    INT DEFAULT 0
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_oro_actual  INT;
    v_resultado   JSONB;
BEGIN
    -- Bloquear fila para evitar race conditions
    SELECT oro INTO v_oro_actual
    FROM   jugadores
    WHERE  jugador_id = p_jugador_id
    FOR UPDATE;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'JUGADOR_NO_ENCONTRADO: jugador_id=%', p_jugador_id;
    END IF;

    IF p_costo_oro < 0 OR p_infanteria < 0 OR p_caballeria < 0 OR p_artilleria < 0 THEN
        RAISE EXCEPTION 'PARAMETROS_INVALIDOS: los valores no pueden ser negativos';
    END IF;

    IF v_oro_actual < p_costo_oro THEN
        RAISE EXCEPTION 'ORO_INSUFICIENTE: tiene=%, necesita=%', v_oro_actual, p_costo_oro;
    END IF;

    -- Operación atómica: descontar oro y sumar tropas
    UPDATE jugadores
    SET
        oro               = oro - p_costo_oro,
        tropas_infanteria = tropas_infanteria + p_infanteria,
        tropas_caballeria = tropas_caballeria + p_caballeria,
        tropas_artilleria = tropas_artilleria + p_artilleria
    WHERE jugador_id = p_jugador_id
    RETURNING jsonb_build_object(
        'jugador_id',        jugador_id,
        'oro',               oro,
        'tropas_infanteria', tropas_infanteria,
        'tropas_caballeria', tropas_caballeria,
        'tropas_artilleria', tropas_artilleria
    ) INTO v_resultado;

    RETURN v_resultado;
END;
$$;


CREATE OR REPLACE FUNCTION comprar_habilidad(
    p_jugador_id    INT,
    p_partida_id    INT,
    p_habilidad_id  VARCHAR(50),
    p_costo_oro     INT            -- Costo en oro (igual que presupuesto del frontend)
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_oro_actual  INT;
    v_pertenece   BOOLEAN;
    v_ya_desbloq  BOOLEAN;
    v_prereq      RECORD;
    v_resultado   JSONB;
BEGIN
    -- 1. Verificar que el jugador pertenece a la partida
    SELECT EXISTS(
        SELECT 1 FROM jugadores
        WHERE jugador_id = p_jugador_id
          AND partida_id = p_partida_id
    ) INTO v_pertenece;

    IF NOT v_pertenece THEN
        RAISE EXCEPTION 'ACCESO_DENEGADO: jugador_id=% no pertenece a partida_id=%',
            p_jugador_id, p_partida_id;
    END IF;

    -- 2. Verificar que la habilidad no esté ya desbloqueada
    SELECT EXISTS(
        SELECT 1 FROM partida_habilidades
        WHERE partida_id   = p_partida_id
          AND habilidad_id = p_habilidad_id
    ) INTO v_ya_desbloq;

    IF v_ya_desbloq THEN
        RAISE EXCEPTION 'YA_DESBLOQUEADA: habilidad_id=% ya está activa en partida_id=%',
            p_habilidad_id, p_partida_id;
    END IF;

    -- 3. Validar cadena completa de prerrequisitos
    FOR v_prereq IN
        SELECT habilidad_requerida_id
        FROM   habilidad_prerrequisitos
        WHERE  habilidad_id = p_habilidad_id
    LOOP
        IF NOT EXISTS (
            SELECT 1 FROM partida_habilidades
            WHERE partida_id   = p_partida_id
              AND habilidad_id = v_prereq.habilidad_requerida_id
        ) THEN
            RAISE EXCEPTION 'PREREQUISITO_FALTANTE: se requiere habilidad_id=% antes de desbloquear %',
                v_prereq.habilidad_requerida_id, p_habilidad_id;
        END IF;
    END LOOP;

    -- 4. Verificar y bloquear el oro del jugador
    SELECT oro INTO v_oro_actual
    FROM   jugadores
    WHERE  jugador_id = p_jugador_id
    FOR UPDATE;

    IF v_oro_actual < p_costo_oro THEN
        RAISE EXCEPTION 'ORO_INSUFICIENTE: tiene=%, necesita=%', v_oro_actual, p_costo_oro;
    END IF;

    -- 5. Descontar oro e insertar desbloqueo (atómico)
    UPDATE jugadores
    SET oro = oro - p_costo_oro
    WHERE jugador_id = p_jugador_id;

    INSERT INTO partida_habilidades (partida_id, habilidad_id, fecha_desbloqueo)
    VALUES (p_partida_id, p_habilidad_id, CURRENT_TIMESTAMP);

    -- 6. Retornar estado
    SELECT jsonb_build_object(
        'jugador_id',   p_jugador_id,
        'partida_id',   p_partida_id,
        'habilidad_id', p_habilidad_id,
        'oro_restante', oro
    )
    INTO v_resultado
    FROM jugadores WHERE jugador_id = p_jugador_id;

    RETURN v_resultado;
END;
$$;



CREATE OR REPLACE FUNCTION avanzar_dia_campana(
    p_partida_id INT
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_dias_nuevo INT;
BEGIN
    IF NOT EXISTS (SELECT 1 FROM partidas WHERE partida_id = p_partida_id) THEN
        RAISE EXCEPTION 'PARTIDA_NO_ENCONTRADA: partida_id=%', p_partida_id;
    END IF;

    UPDATE tiempos
    SET dias_campana = dias_campana + 1
    WHERE partida_id = p_partida_id;

    UPDATE partidas
    SET dias_campana        = dias_campana + 1,
        ultima_vez_guardado = CURRENT_TIMESTAMP
    WHERE partida_id = p_partida_id
    RETURNING dias_campana INTO v_dias_nuevo;

    RETURN jsonb_build_object(
        'partida_id',   p_partida_id,
        'dias_campana', v_dias_nuevo,
        'timestamp',    CURRENT_TIMESTAMP
    );
END;
$$;


CREATE OR REPLACE FUNCTION guardar_estado_partida(
    p_partida_id         INT,
    p_jugador_id         INT,
    p_oro                INT,
    p_tropas_infanteria  INT,
    p_tropas_caballeria  INT,
    p_tropas_artilleria  INT,
    p_habilidad_puntos   INT,
    p_dias_campana       INT,
    p_porcentaje_dominio NUMERIC(5,2),
    p_velocidad          INT     DEFAULT 1,
    p_pausado            BOOLEAN DEFAULT FALSE
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_pertenece BOOLEAN;
    v_ts        TIMESTAMPTZ := CURRENT_TIMESTAMP;
BEGIN
    SELECT EXISTS(
        SELECT 1 FROM jugadores
        WHERE jugador_id = p_jugador_id
          AND partida_id = p_partida_id
    ) INTO v_pertenece;

    IF NOT v_pertenece THEN
        RAISE EXCEPTION 'ACCESO_DENEGADO: jugador_id=% no pertenece a partida_id=%',
            p_jugador_id, p_partida_id;
    END IF;

    UPDATE jugadores
    SET oro               = p_oro,
        tropas_infanteria = p_tropas_infanteria,
        tropas_caballeria = p_tropas_caballeria,
        tropas_artilleria = p_tropas_artilleria,
        habilidad_puntos  = p_habilidad_puntos
    WHERE jugador_id = p_jugador_id;

    UPDATE partidas
    SET dias_campana        = p_dias_campana,
        porcentaje_dominio  = p_porcentaje_dominio,
        ultima_vez_guardado = v_ts
    WHERE partida_id = p_partida_id;

    UPDATE tiempos
    SET dias_campana = p_dias_campana,
        velocidad    = p_velocidad,
        pausado      = p_pausado
    WHERE partida_id = p_partida_id;

    RETURN jsonb_build_object(
        'success',    true,
        'partida_id', p_partida_id,
        'jugador_id', p_jugador_id,
        'guardado_en', v_ts
    );
END;
$$;

CREATE OR REPLACE FUNCTION inicializar_nueva_partida(
    p_usuario_id         INT,
    p_commander_id       VARCHAR(100),
    p_hq_pais_id         VARCHAR(100),
    p_oro                INT DEFAULT 5000,
    p_tropas_infanteria  INT DEFAULT 5000,
    p_tropas_caballeria  INT DEFAULT 2000,
    p_tropas_artilleria  INT DEFAULT 500,
    p_velocidad          INT DEFAULT 1
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_partida_id INT;
    v_jugador_id INT;
    v_ts         TIMESTAMPTZ := CURRENT_TIMESTAMP;
BEGIN
    IF NOT EXISTS (SELECT 1 FROM usuarios WHERE usuario_id = p_usuario_id) THEN
        RAISE EXCEPTION 'USUARIO_NO_ENCONTRADO: usuario_id=%', p_usuario_id;
    END IF;

    INSERT INTO partidas (
        commander_id, estado_activo, dias_campana,
        porcentaje_dominio, fecha_creacion, ultima_vez_guardado
    )
    VALUES (p_commander_id, TRUE, 1, 0.00, v_ts, v_ts)
    RETURNING partida_id INTO v_partida_id;

    INSERT INTO jugadores (
        usuario_id, partida_id, hq_pais_id, oro, habilidad_puntos,
        tropas_infanteria, tropas_caballeria, tropas_artilleria
    )
    VALUES (
        p_usuario_id, v_partida_id, p_hq_pais_id, p_oro, 0,
        p_tropas_infanteria, p_tropas_caballeria, p_tropas_artilleria
    )
    RETURNING jugador_id INTO v_jugador_id;

    INSERT INTO tiempos (partida_id, dias_campana, velocidad, pausado)
    VALUES (v_partida_id, 1, p_velocidad, FALSE);

    RETURN jsonb_build_object(
        'partida_id',        v_partida_id,
        'jugador_id',        v_jugador_id,
        'commander_id',      p_commander_id,
        'hq_pais_id',        p_hq_pais_id,
        'oro',               p_oro,
        'tropas_infanteria', p_tropas_infanteria,
        'tropas_caballeria', p_tropas_caballeria,
        'tropas_artilleria', p_tropas_artilleria,
        'velocidad',         p_velocidad,
        'fecha_creacion',    v_ts
    );
END;
$$;