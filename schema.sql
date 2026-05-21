CREATE TABLE usuarios (
    usuario_id SERIAL PRIMARY KEY,
    correo VARCHAR(255) NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    creado TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE jugadores (
    jugador_id SERIAL PRIMARY KEY,
    habilidad INT NOT NULL,
    territorio INT NOT NULL,
    ejercito INT NOT NULL,
    economia INT NOT NULL,
    poblacion INT NOT NULL
);

CREATE TABLE mapas (
    mapa_id SERIAL PRIMARY KEY,
    nro_continentes INT NOT NULL,
    nro_paises INT NOT NULL
);

CREATE TABLE continentes (
    continente_id SERIAL PRIMARY KEY,
    nro_paises INT NOT NULL
    FOREIGN KEY (mapa_id) REFERENCES mapas(mapa_id)
);

CREATE TABLE paises (
    pais_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ejercito INT NOT NULL,
    poblacion INT NOT NULL,
    economia INT NOT NULL,
    conquistado BOOLEAN NOT NULL DEFAULT FALSE
    FOREIGN KEY (continente_id) REFERENCES continentes(continente_id)
);

CREATE TABLE arbol_habilidades (
    arbol_id SERIAL PRIMARY KEY,
    --tipo INT NOT NULL,
    --nro_habilidades INT NOT NULL,
    --progresion INT NOT NULL,
    --ramas INT NOT NULL
);

CREATE TABLE habilidades (
    habilidad_id SERIAL PRIMARY KEY,
    --nombre VARCHAR(100) NOT NULL,
    --descripcion TEXT NOT NULL,
    --bonificacion_economia INT NOT NULL,
    --bonificacion_tropa INT NOT NULL,
    --costo INT NOT NULL
);

CREATE TABLE ejercitos_jugador (
    ejercito_id SERIAL PRIMARY KEY,
    nro_tropas INT NOT NULL DEFAULT 0
);

CREATE TABLE tropas (
    tropa_id SERIAL PRIMARY KEY,
    tipo     INT NOT NULL,
    costo    INT NOT NULL,
    ataque   INT NOT NULL,
    defensa  INT NOT NULL
);

CREATE TABLE infanterias (
    tropa_id     INT PRIMARY KEY,
    FOREIGN KEY (tropa_id) REFERENCES tropas(tropa_id),
    bono_defensa INT NOT NULL,
);

CREATE TABLE caballerias (
    tropa_id    INT PRIMARY KEY,
    FOREIGN KEY (tropa_id) REFERENCES tropas(tropa_id),
    bono_ataque INT NOT NULL,
);

CREATE TABLE artillerias (
    tropa_id     INT PRIMARY KEY,
    FOREIGN KEY (tropa_id) REFERENCES tropas(tropa_id),
    bono_ataque  INT NOT NULL,
    bono_defensa INT NOT NULL,
);

CREATE TABLE tiempos (
  tiempo_id SERIAL PRIMARY KEY, 
  fecha_partida TIMESTAMP NOT NULL, 
  velocidad INT NOT NULL DEFAULT 1, 
  pausado BOOLEAN NOT NULL DEFAULT FALSE 
)
; 
CREATE TABLE eventos (
  evento_id SERIAL PRIMARY KEY, 
  descripcion TEXT NOT NULL, 
  bonificacion INT NOT NULL
)
; 
CREATE TABLE partidas (
  partida_id SERIAL PRIMARY KEY, 
  estado BOOLEAN NOT NULL DEFAULT TRUE,
  fecha TIMESTAMP NOT NULL, 
  tiempo INT NOT NULL
); 
CREATE TABLE eventos_tiempo (
  evento_id INT , 
  tiempo_id INT

); 