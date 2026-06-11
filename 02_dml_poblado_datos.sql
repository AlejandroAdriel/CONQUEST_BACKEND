INSERT INTO usuarios (correo, username, contrasena, nombre, pais) VALUES 
('general.kenobi@republica.com', 'KENOBI', 'contrasenaSegura123', 'Obi-Wan Kenobi', 'Reino Unido'),
('m.gomez@correo.com', 'MGOMEZ', 'admin456', 'María Gómez', 'España'),
('jugador_elite@gaming.net', 'ELITE_CARLOS', 'qwerty789', 'Carlos Ruiz', 'México'),
('valeria.silva@correo.com', 'VALE_JUEGOS', 'valejuegos45', 'Valeria Silva', 'Argentina'),
('arthur.pendragon@reino.com', 'PENDRAGON', 'excalibur123', 'Arturo Pendragon', 'Reino Unido');

INSERT INTO partidas (estado, cuartel_general, fecha_creacion, tiempo_jugado) VALUES 
(TRUE, 'ESTADOS UNIDOS', '2026-05-28 00:00:00', 3600),
(TRUE, 'ALEMANIA', '2026-05-27 15:00:00', 7200),
(FALSE, 'FRANCIA', '2026-05-25 10:00:00', 18000),
(TRUE, 'JAPON', '2026-05-28 20:00:00', 4500),
(FALSE, 'BRASIL', '2026-05-24 08:30:00', 24000);

INSERT INTO jugadores (usuario_id, partida_id, habilidad_puntos, oro) VALUES 
(1, 1, 10, 5000), 
(2, 2, 15, 4000), 
(3, 3, 12, 3900), 
(4, 4, 10, 5000), 
(5, 5, 12, 6000); 

INSERT INTO ejercitos_jugador (jugador_id, infanteria, caballeria, artilleria) VALUES 
(1, 5000, 2000, 500), 
(2, 3000, 1000, 200), 
(3, 1000, 500, 50), 
(4, 8000, 4000, 1000), 
(5, 1200, 800, 100);

INSERT INTO mapas (nro_continentes, nro_paises) VALUES 
(6, 42), 
(4, 25);

INSERT INTO continentes (nro_paises, mapa_id) VALUES 
(12, 1), 
(10, 1), 
(8,  2), 
(7,  2);

INSERT INTO paises (codigo_iso, nombre, ejercito, poblacion, economia, continente_id) VALUES 
('ARG', 'Argentina', 5000, 45000000, 3, 1), 
('BRA', 'Brasil', 8000, 210000000, 4, 1),   
('CAN', 'Canadá', 4000, 38000000, 5, 2),    
('FRA', 'Francia', 7000, 67000000, 5, 3),    
('JPN', 'Japón', 6000, 125000000, 5, 4);

INSERT INTO partida_paises (partida_id, pais_id, conquistado, color_tactico) VALUES
(1, 1, TRUE, '#3b82f6'),
(1, 2, FALSE, '#1e293b');

INSERT INTO arbol_habilidades (tipo, nro_habilidades) VALUES
(1, 5),
(2, 3);

INSERT INTO habilidades (habilidad_id, arbol_id, nombre, descripcion, costo, categoria, rama) VALUES
('D_ROOT', 1, 'Protocolo de Despertar', 'Mejora la producción', 100, 'desarrollo', 'Origen'),
('M_ROOT', 2, 'Doctrina de Guerra', 'Aumenta fuerza infantería', 200, 'militar', 'Origen');

INSERT INTO tropas (nombre_tropa, costo, ataque, defensa) VALUES 
('Milicia Ligera', 100, 15, 10),     
('Infantería Pesada', 150, 20, 25),  
('Exploradores', 250, 35, 15),       
('Tanques Ligeros', 400, 50, 30),    
('Cañones Plasma', 500, 60, 5);      

INSERT INTO infanterias (tropa_id, bono_defensa) VALUES
(1, 5),
(2, 10);

INSERT INTO caballerias (tropa_id, bono_ataque) VALUES
(3, 20),
(4, 7);

INSERT INTO artillerias (tropa_id, bono_ataque, bono_defensa) VALUES
(5, 25, 2);

INSERT INTO tiempos (fecha_partida, velocidad, pausado) VALUES 
('2026-05-28 00:00:00', 1, FALSE),
('2026-05-28 12:30:00', 2, FALSE);

INSERT INTO eventos (titulo, descripcion, bonificacion, tipo) VALUES
('Tormenta de Arena', 'Caos en tierra firme', -3, 'alert'),
('Alianza Concretada', 'Liderazgo sólido', 6, 'success'); 

INSERT INTO eventos_tiempo (evento_id, tiempo_id) VALUES 
(1, 1), 
(2, 2);