CREATE TABLE usuarios (
    usuario_id INT PRIMARY KEY,
    correo VARCHAR(255) NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    creado TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE jugadores (
    jugador_id INT PRIMARY KEY,
    habilidad INT NOT NULL,
    territorio INT NOT NULL,
    ejercito INT NOT NULL,
    economia INT NOT NULL,
    poblacion INT NOT NULL
);

CREATE TABLE mapas (
    mapa_id INT PRIMARY KEY,
    nro_continentes INT NOT NULL,
    nro_paises INT NOT NULL
);

CREATE TABLE continentes (
    continente_id INT PRIMARY KEY,
    nro_paises INT NOT NULL
);