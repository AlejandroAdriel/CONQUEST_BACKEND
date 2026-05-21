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
