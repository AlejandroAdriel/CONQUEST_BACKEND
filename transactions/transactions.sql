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
