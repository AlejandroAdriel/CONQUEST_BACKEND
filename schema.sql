CREATE TABLE
    usuarios (
        usuario_id SERIAL PRIMARY KEY,
        username VARCHAR(50) NOT NULL UNIQUE,
        correo VARCHAR(255) NOT NULL UNIQUE,
        nombre VARCHAR(100) NOT NULL,
        pais VARCHAR(50) NOT NULL,
        password_hash VARCHAR(255) NOT NULL,
        rango VARCHAR(50) DEFAULT 'OPERARIO NOVATO' NOT NULL,
        fecha_registro TIMESTAMP
        WITH
            TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL
    );

CREATE TABLE
    partidas (
        partida_id SERIAL PRIMARY KEY,
        commander_id VARCHAR(100) NOT NULL UNIQUE,
        estado_activo BOOLEAN DEFAULT TRUE NOT NULL,
        dias_campana INT DEFAULT 1 NOT NULL,
        porcentaje_dominio NUMERIC(5, 2) DEFAULT 0.00 NOT NULL,
        fecha_creacion TIMESTAMP
        WITH
            TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
            ultima_vez_guardado TIMESTAMP
        WITH
            TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL
    );

CREATE TABLE
    jugadores (
        jugador_id SERIAL PRIMARY KEY,
        usuario_id INT NOT NULL REFERENCES usuarios (usuario_id) ON DELETE CASCADE,
        partida_id INT NOT NULL REFERENCES partidas (partida_id) ON DELETE CASCADE,
        hq_pais_id VARCHAR(100) NOT NULL,
        oro INT NOT NULL,
        habilidad_puntos INT DEFAULT 0 NOT NULL,
        tropas_infanteria INT DEFAULT 5000 NOT NULL,
        tropas_caballeria INT DEFAULT 2000 NOT NULL,
        tropas_artilleria INT DEFAULT 500 NOT NULL,
        CONSTRAINT unica_relacion_sesion UNIQUE (usuario_id, partida_id)
    );

CREATE TABLE
    tiempos (
        tiempo_id SERIAL PRIMARY KEY,
        partida_id INT NOT NULL REFERENCES partidas (partida_id) ON DELETE CASCADE,
        dias_campana INT DEFAULT 0 NOT NULL,
        velocidad INT DEFAULT 1 NOT NULL,
        pausado BOOLEAN DEFAULT FALSE NOT NULL
    );

CREATE TABLE
    mapas (
        mapa_id SERIAL PRIMARY KEY,
        nombre_mapa VARCHAR(100) NOT NULL,
        nro_continentes INT NOT NULL,
        nro_paises INT NOT NULL
    );

CREATE TABLE
    continentes (
        continente_id SERIAL PRIMARY KEY,
        mapa_id INT NOT NULL REFERENCES mapas (mapa_id) ON DELETE CASCADE,
        nombre_continente VARCHAR(100) NOT NULL
    );

CREATE TABLE
    paises_base (
        pais_id VARCHAR(100) PRIMARY KEY,
        nombre_es VARCHAR(100) NOT NULL,
        continente_id INT NOT NULL REFERENCES continentes (continente_id) ON DELETE CASCADE,
        poblacion_real_tierra BIGINT NOT NULL,
        gdp_per_capita_base INT DEFAULT 5000 NOT NULL,
        ejercito_multiplicador NUMERIC(4, 2) DEFAULT 1.00 NOT NULL,
        pct_composicion_infanteria NUMERIC(4, 3) DEFAULT 0.700 NOT NULL,
        pct_composicion_caballeria NUMERIC(4, 3) DEFAULT 0.200 NOT NULL,
        pct_composicion_artilleria NUMERIC(4, 3) DEFAULT 0.100 NOT NULL,
        tasa_natalidad_diaria NUMERIC(10, 6) NOT NULL,
        tasa_mortalidad_diaria NUMERIC(10, 6) NOT NULL,
        multiplicador_reclutamiento NUMERIC(4, 2) DEFAULT 1.00 NOT NULL,
        multiplicador_pesadas NUMERIC(4, 2) DEFAULT 1.00 NOT NULL
    );

CREATE TABLE
    arbol_habilidades (
        arbol_id SERIAL PRIMARY KEY,
        tipo INT NOT NULL,
        nro_habilidades INT NOT NULL
    );

CREATE TABLE
    habilidades (
        habilidad_id VARCHAR(20) PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL,
        descripcion TEXT NOT NULL,
        costo INT NOT NULL,
        categoria VARCHAR(50) NOT NULL,
        rama VARCHAR(50) NOT NULL,
        eje_x INT NOT NULL,
        eje_y INT NOT NULL
    );
CREATE TABLE
    habilidad_prerrequisitos (
        habilidad_id VARCHAR(50) REFERENCES habilidades (habilidad_id) ON DELETE CASCADE,
        habilidad_requerida_id VARCHAR(50) REFERENCES habilidades (habilidad_id) ON DELETE CASCADE,
        PRIMARY KEY (habilidad_id, habilidad_requerida_id)
    );

CREATE TABLE
    partida_habilidades (
        partida_id INT NOT NULL,
        habilidad_id VARCHAR(50) REFERENCES habilidades (habilidad_id) ON DELETE CASCADE,
        fecha_desbloqueo TIMESTAMP
        WITH
            TIME ZONE DEFAULT CURRENT_TIMESTAMP,
            PRIMARY KEY (partida_id, habilidad_id)
    );

CREATE TABLE
    tropas (
        tropa_id SERIAL PRIMARY KEY,
        nombre_tropa VARCHAR(50) NOT NULL,
        costo INT NOT NULL,
        ataque INT NOT NULL,
        defensa INT NOT NULL
    );

CREATE TABLE infanterias (
    tropa_id INT PRIMARY KEY REFERENCES tropas(tropa_id) ON DELETE CASCADE,
    bono_defensa_trinchera NUMERIC(3,1) DEFAULT 0.0 NOT NULL CHECK (bono_defensa_trinchera >= 0.0)
);

CREATE TABLE caballerias (
    tropa_id INT PRIMARY KEY REFERENCES tropas(tropa_id) ON DELETE CASCADE,
    bono_ataque_flanqueo NUMERIC(3,1) DEFAULT 0.0 NOT NULL CHECK (bono_ataque_flanqueo >= 0.0)
);

CREATE TABLE 
    artillerias (
    tropa_id INT PRIMARY KEY REFERENCES tropas(tropa_id) ON DELETE CASCADE,
    bono_perforacion_plasma NUMERIC(3,1) DEFAULT 0.0 NOT NULL CHECK (bono_perforacion_plasma >= 0.0)
);
CREATE TABLE
    tiempos (
        tiempo_id SERIAL PRIMARY KEY,
        fecha_partida TIMESTAMP NOT NULL,
        velocidad INT NOT NULL DEFAULT 1,
        pausado BOOLEAN NOT NULL DEFAULT FALSE
    );

CREATE TABLE
    eventos (
        evento_id SERIAL PRIMARY KEY,
        titulo VARCHAR(100) NOT NULL,
        descripcion TEXT NOT NULL,
        bonificacion INT NOT NULL,
        tipo VARCHAR(20)
    );

CREATE TABLE
    eventos_tiempo (
        evento_id INT,
        tiempo_id INT,
        PRIMARY KEY (evento_id, tiempo_id),
        FOREIGN KEY (evento_id) REFERENCES eventos (evento_id),
        FOREIGN KEY (tiempo_id) REFERENCES tiempos (tiempo_id)
    );
