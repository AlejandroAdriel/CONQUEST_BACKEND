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