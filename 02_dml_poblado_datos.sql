INSERT INTO usuarios (correo, contrasena, nombre) VALUES 
('general.kenobi@republica.com', 'contrasenaSegura123', 'Obi-Wan Kenobi'),
('m.gomez@correo.com', 'admin456', 'María Gómez'),
('jugador_elite@gaming.net', 'qwerty789', 'Carlos Ruiz'),
('valeria.silva@correo.com', 'valejuegos45', 'Valeria Silva'),
('arthur.pendragon@reino.com', 'excalibur123', 'Arturo Pendragon');

INSERT INTO jugadores (usuario_id, habilidad, territorio, ejercito, economia, poblacion) VALUES 
(1, 10, 5, 1500, 5000, 10000), 
(2, 15, 8, 3000, 8500, 25000),  
(3, 5,  2, 500,  1200, 3000),   
(4, 18, 9, 3500, 9000, 28000),  
(5, 12, 4, 1200, 4500, 9000);   

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

INSERT INTO arbol_habilidades (tipo, nro_habilidades, progresion, ramas) VALUES
(1, 5, 1, 2),
(2, 3, 2, 1),
(3, 4, 1, 3),
(1, 6, 2, 2), 
(2, 5, 3, 2);

INSERT INTO habilidades (nombre, descripcion, bonificacion_economia, bonificacion_tropa, costo) VALUES
('Agricultura', 'Mejora la producción de recursos', 10, 0, 100),
('Infantería', 'Aumenta la fuerza de las tropas de infantería', 0, 15, 200),
('Comercio', 'Reduce costos en rutas comerciales', 15, 5, 150),
('Ingeniería', 'Mejora defensas y construcciones', 5, 10, 250),
('Diplomacia', 'Mejora relaciones y alianzas', 20, 0, 120);

INSERT INTO ejercitos_jugador (nro_tropas) VALUES 
(1500), 
(3000), 
(500), 
(3500), 
(1200);

INSERT INTO tropas (tipo, costo, ataque, defensa) VALUES 
(1, 100, 15, 10), 
(1, 150, 20, 25), 
(2, 250, 35, 15), 
(2, 400, 50, 30), 
(3, 500, 60, 5);   

INSERT INTO infanterias (tropas_id, bono_defensa) VALUES
(1,5),
(2,10),
(3,7),
(4, 8),
(5, 2);

INSERT INTO caballerias (tropas_id, bono_ataque) VALUES
(2,15),
(3,20),
(4,7),
(1, 5),
(5, 12);

INSERT INTO artillerias (tropas_id,bono_ataque,  bono_defensa) VALUES
(2,15, 0),
(3,5, 5),
(4,10, 7),
(5, 25, 2),
(6, 40, 5);

INSERT INTO tiempos (fecha_partida, velocidad, pausado) VALUES 
('2026-05-28 00:00:00', 1, FALSE),
('2026-05-28 12:30:00', 2, FALSE),
('2026-05-28 18:45:10', 1, TRUE),
('2026-05-29 02:15:00', 3, FALSE),
('2026-05-29 09:00:00', 1, TRUE);

INSERT INTO eventos (descripcion, bonificacion) VALUES
('Tormenta de Arena: Caos en tierra firme', -3),
('Corte repentino de suministros: Hambruna en el campamento', -5),
('Lluvia intensa: Avance Lento', -4),
('Alianza concretada: Liderazgo solido', 6),
('Discurso inspirador: Alza de impetu', 5); 

INSERT INTO partidas (estado, fecha, tiempo) VALUES 
(TRUE, '2026-05-28 00:00:00', 3600),
(TRUE, '2026-05-27 15:00:00', 7200),
(FALSE, '2026-05-25 10:00:00', 18000),
(TRUE, '2026-05-28 20:00:00', 4500),
(FALSE, '2026-05-24 08:30:00', 24000);

INSERT INTO eventos_tiempo (evento_id, tiempo_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5);

UPDATE usuarios 
SET contrasena = 'NuevaContrasena2026' 
WHERE usuario_id = 4;

UPDATE jugadores 
SET habilidad = habilidad + 2
WHERE jugador_id = 1;