INSERT INTO usuarios (correo, contrasena, nombre) 
VALUES 
('general.kenobi@republica.com', 'contrasenaSegura123', 'Obi-Wan Kenobi'),
('m.gomez@correo.com', 'admin456', 'María Gómez'),
('jugador_elite@gaming.net', 'qwerty789', 'Carlos Ruiz'),
('valeria.silva@correo.com', 'valejuegos45', 'Valeria Silva'),
('arthur.pendragon@reino.com', 'excalibur123', 'Arturo Pendragon');

INSERT INTO jugadores (usuario_id, habilidad, territorio, ejercito, economia, poblacion) 
VALUES 
(1, 10, 5, 1500, 5000, 10000),  -- Vinculado a Obi-Wan Kenobi (ID 1)
(2, 15, 8, 3000, 8500, 25000),  -- Vinculado a María Gómez (ID 2)
(3, 5,  2, 500,  1200, 3000),   -- Vinculado a Carlos Ruiz (ID 3)
(4, 18, 9, 3500, 9000, 28000),  -- Vinculado a Valeria Silva (ID 4)
(5, 12, 4, 1200, 4500, 9000);   -- Vinculado a Arturo Pendragon (ID 5)

INSERT INTO habilidades (nombre, descripcion, bonificacion_economia, bonificacion_tropa, costo)
VALUES
    ('Agricultura', 'Mejora la producción de recursos', 10, 0, 100),
    ('Infantería', 'Aumenta la fuerza de las tropas de infantería', 0, 15, 200),
    ('Comercio', 'Reduce costos en rutas comerciales', 15, 5, 150),
    ('Ingeniería', 'Mejora defensas y construcciones', 5, 10, 250),
    ('Diplomacia', 'Mejora relaciones y alianzas', 20, 0, 120);


INSERT INTO arbol_habilidades (tipo, nro_habilidades, progresion, ramas)
VALUES
    (1, 5, 1, 2),
    (2, 3, 2, 1),
    (3, 4, 1, 3);

INSERT INTO mapas (nro_continentes, nro_paises) VALUES 
(6, 42), 
(4, 25), 
(5, 30), 
(7, 50), 
(3, 15); 

INSERT INTO continentes (nro_paises, mapa_id) VALUES 
(12, 1), 
(10, 1), 
(8,  2), 
(7,  2), 
(15, 3); 

INSERT INTO paises (nombre, ejercito, poblacion, economia, conquistado, continente_id) VALUES 
('Argentina', 5000, 45000000, 3, FALSE, 1), 
('Brasil', 8000, 210000000, 4, FALSE, 1),   
('Canadá', 4000, 38000000, 5, FALSE, 2),    
('Francia', 7000, 67000000, 5, TRUE, 3),    
('Japón', 6000, 125000000, 5, FALSE, 4);   

INSERT INTO tropas (tipo, costo, ataque, defensa) VALUES 
(1, 100, 15, 10),  -- Generará ID 1 (Infantería)
(1, 150, 20, 25),  -- Generará ID 2 (Infantería)
(2, 250, 35, 15),  -- Generará ID 3 (Caballería)
(2, 400, 50, 30),  -- Generará ID 4 (Caballería)
(3, 500, 60, 5);   -- Generará ID 5 (Artillería)