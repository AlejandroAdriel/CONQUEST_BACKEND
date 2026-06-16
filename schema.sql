-- 1. TABLAS DE SEGURIDAD Y PERFILES
CREATE TABLE usuarios (
    usuario_id SERIAL PRIMARY KEY,
    correo VARCHAR(255) NOT NULL UNIQUE,
    username VARCHAR(50) NOT NULL UNIQUE, 
    contrasena VARCHAR(255) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(100),                    
    rango VARCHAR(50) DEFAULT 'OPERARIO NOVATO', 
    creado TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 2. TABLAS DE LA PARTIDA (SAVEFILES)
CREATE TABLE partidas (
    partida_id SERIAL PRIMARY KEY, 
    estado BOOLEAN NOT NULL DEFAULT TRUE,
    cuartel_general VARCHAR(100),     
    dias_campana INT DEFAULT 0,       
    porcentaje_dominio DECIMAL(5,2) DEFAULT 0.0, 
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    ultima_vez_guardado TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    tiempo_jugado INT NOT NULL DEFAULT 0
); 

CREATE TABLE jugadores (
    jugador_id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    partida_id INT NOT NULL,
    habilidad_puntos INT NOT NULL DEFAULT 0,
    oro INT NOT NULL DEFAULT 5000,    
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (partida_id) REFERENCES partidas(partida_id),
    UNIQUE(usuario_id, partida_id)     
);

CREATE TABLE ejercitos_jugador (
    ejercito_id SERIAL PRIMARY KEY,
    jugador_id INT NOT NULL,
    infanteria INT NOT NULL DEFAULT 0, 
    caballeria INT NOT NULL DEFAULT 0,
    artilleria INT NOT NULL DEFAULT 0,
    FOREIGN KEY (jugador_id) REFERENCES jugadores(jugador_id)
);

CREATE TABLE mapas (
    mapa_id SERIAL PRIMARY KEY,
    nro_continentes INT NOT NULL,
    nro_paises INT NOT NULL
);

CREATE TABLE continentes (
    continente_id SERIAL PRIMARY KEY,
    mapa_id INT NOT NULL,
    nro_paises INT NOT NULL,
    FOREIGN KEY (mapa_id) REFERENCES mapas(mapa_id)
);

CREATE TABLE paises (
    pais_id SERIAL PRIMARY KEY,
    codigo_iso VARCHAR(3) NOT NULL,    
    nombre VARCHAR(100) NOT NULL,
    ejercito INT NOT NULL,
    poblacion BIGINT NOT NULL,
    economia INT NOT NULL,
    continente_id INT NOT NULL,
    FOREIGN KEY (continente_id) REFERENCES continentes(continente_id)
);

CREATE TABLE partida_paises (
    partida_pais_id SERIAL PRIMARY KEY,
    partida_id INT NOT NULL,
    pais_id INT NOT NULL,
    conquistado BOOLEAN NOT NULL DEFAULT FALSE,
    color_tactico VARCHAR(10) DEFAULT '#1e293b',
    FOREIGN KEY (partida_id) REFERENCES partidas(partida_id),
    FOREIGN KEY (pais_id) REFERENCES paises(pais_id),
    UNIQUE(partida_id, pais_id)
);

CREATE TABLE arbol_habilidades (
    arbol_id SERIAL PRIMARY KEY,
    tipo INT NOT NULL,
    nro_habilidades INT NOT NULL
);

CREATE TABLE habilidades (
    habilidad_id VARCHAR(20) PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    costo INT NOT NULL,
    categoria VARCHAR(50) NOT NULL,  
    rama VARCHAR(50) NOT NULL,
    eje_x INT NOT NULL,              
    eje_y INT NOT NULL
);

CREATE TABLE partida_habilidades (
    progreso_id SERIAL PRIMARY KEY,
    partida_id INT NOT NULL,
    habilidad_id VARCHAR(20) NOT NULL,
    desbloqueada BOOLEAN NOT NULL DEFAULT FALSE,
    en_desarrollo BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (partida_id) REFERENCES partidas(partida_id),
    FOREIGN KEY (habilidad_id) REFERENCES habilidades(habilidad_id)
);

CREATE TABLE tropas (
    tropa_id SERIAL PRIMARY KEY,
    nombre_tropa VARCHAR(50) NOT NULL,
    costo INT NOT NULL,
    ataque INT NOT NULL,
    defensa INT NOT NULL
);

CREATE TABLE infanterias (
    tropa_id INT PRIMARY KEY,
    bono_defensa INT NOT NULL,
    FOREIGN KEY (tropa_id) REFERENCES tropas(tropa_id)
);

CREATE TABLE caballerias (
    tropa_id INT PRIMARY KEY,
    bono_ataque INT NOT NULL,
    FOREIGN KEY (tropa_id) REFERENCES tropas(tropa_id)
);

CREATE TABLE artillerias (
    tropa_id INT PRIMARY KEY,
    bono_ataque INT NOT NULL,
    bono_defensa INT NOT NULL,
    FOREIGN KEY (tropa_id) REFERENCES tropas(tropa_id)
);

CREATE TABLE tiempos (
  tiempo_id SERIAL PRIMARY KEY, 
  fecha_partida TIMESTAMP NOT NULL, 
  velocidad INT NOT NULL DEFAULT 1, 
  pausado BOOLEAN NOT NULL DEFAULT FALSE 
);
 
CREATE TABLE eventos (
  evento_id SERIAL PRIMARY KEY, 
  titulo VARCHAR(100) NOT NULL,
  descripcion TEXT NOT NULL, 
  bonificacion INT NOT NULL,
  tipo VARCHAR(20) 
);

CREATE TABLE eventos_tiempo (
  evento_id INT, 
  tiempo_id INT,
  PRIMARY KEY(evento_id, tiempo_id), 
  FOREIGN KEY(evento_id) REFERENCES eventos(evento_id),
  FOREIGN KEY(tiempo_id) REFERENCES tiempos(tiempo_id)
);
