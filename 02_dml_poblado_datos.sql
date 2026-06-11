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
(1, 1, 10, 5000), (2, 2, 15, 4000), (3, 3, 12, 3900), (4, 4, 10, 5000), (5, 5, 12, 6000); 

INSERT INTO ejercitos_jugador (jugador_id, infanteria, caballeria, artilleria) VALUES 
(1, 5000, 2000, 500), (2, 3000, 1000, 200), (3, 1000, 500, 50), (4, 8000, 4000, 1000), (5, 1200, 800, 100);

INSERT INTO mapas (nro_continentes, nro_paises) VALUES (6, 150), (4, 25);
INSERT INTO continentes (nro_paises, mapa_id) VALUES (12, 1), (10, 1), (8, 2), (7, 2);

INSERT INTO paises (codigo_iso, nombre, ejercito, poblacion, economia, continente_id) VALUES 
('CHN', 'China', 10000, 1420000000, 5, 1), ('IND', 'India', 9000, 1440000000, 4, 1), ('USA', 'United States of America', 12000, 341000000, 5, 1),
('IDN', 'Indonesia', 4000, 278000000, 3, 1), ('PAK', 'Pakistan', 5000, 242000000, 2, 1), ('BRA', 'Brazil', 6000, 216000000, 3, 1),
('NGA', 'Nigeria', 3000, 224000000, 2, 1), ('BGD', 'Bangladesh', 2000, 173000000, 2, 1), ('RUS', 'Russia', 9000, 144000000, 4, 1),
('MEX', 'Mexico', 4000, 129000000, 3, 1), ('JPN', 'Japan', 5000, 123000000, 5, 1), ('ETH', 'Ethiopia', 2000, 126000000, 1, 1),
('PHL', 'Philippines', 3000, 117000000, 2, 1), ('EGY', 'Egypt', 4000, 113000000, 2, 1), ('VNM', 'Vietnam', 4000, 99000000, 3, 1),
('COD', 'DR Congo', 1000, 102000000, 1, 1), ('TUR', 'Turkey', 6000, 86000000, 3, 1), ('IRN', 'Iran', 6000, 89000000, 3, 1),
('DEU', 'Germany', 5000, 84000000, 5, 1), ('THA', 'Thailand', 3000, 71000000, 3, 1), ('GBR', 'United Kingdom', 5000, 68000000, 5, 1),
('FRA', 'France', 6000, 65000000, 5, 1), ('ITA', 'Italy', 4000, 59000000, 4, 1), ('TZA', 'Tanzania', 1000, 67000000, 1, 1),
('ZAF', 'South Africa', 3000, 60000000, 3, 1), ('KEN', 'Kenya', 2000, 55000000, 2, 1), ('KOR', 'South Korea', 5000, 51000000, 5, 1),
('COL', 'Colombia', 3000, 52000000, 3, 1), ('ESP', 'Spain', 3000, 48000000, 4, 1), ('ARG', 'Argentina', 3000, 46000000, 3, 1),
('DZA', 'Algeria', 3000, 45000000, 3, 1), ('SDN', 'Sudan', 2000, 48000000, 1, 1), ('UKR', 'Ukraine', 4000, 38000000, 2, 1),
('IRQ', 'Iraq', 3000, 45000000, 2, 1), ('AFG', 'Afghanistan', 2000, 42000000, 1, 1), ('POL', 'Poland', 3000, 38000000, 4, 1),
('CAN', 'Canada', 3000, 39000000, 5, 1), ('MAR', 'Morocco', 2000, 38000000, 3, 1), ('SAU', 'Saudi Arabia', 4000, 37000000, 4, 1),
('AGO', 'Angola', 2000, 36000000, 2, 1), ('PER', 'Peru', 2000, 34000000, 3, 1), ('MYS', 'Malaysia', 2000, 34000000, 4, 1),
('MOZ', 'Mozambique', 1000, 33000000, 1, 1), ('YEM', 'Yemen', 1000, 34000000, 1, 1), ('NPL', 'Nepal', 1000, 31000000, 1, 1),
('VEN', 'Venezuela', 2000, 29000000, 2, 1), ('CIV', 'Ivory Coast', 1000, 29000000, 2, 1), ('MDG', 'Madagascar', 1000, 30000000, 1, 1),
('AUS', 'Australia', 3000, 26000000, 5, 1), ('PRK', 'North Korea', 5000, 26000000, 1, 1), ('CMR', 'Cameroon', 1000, 28000000, 1, 1),
('TWN', 'Taiwan', 3000, 24000000, 5, 1), ('NER', 'Niger', 1000, 27000000, 1, 1), ('LKA', 'Sri Lanka', 1000, 22000000, 2, 1),
('BFA', 'Burkina Faso', 1000, 23000000, 1, 1), ('MLI', 'Mali', 1000, 23000000, 1, 1), ('CHL', 'Chile', 2000, 20000000, 4, 1),
('ROU', 'Romania', 2000, 19000000, 3, 1), ('KAZ', 'Kazakhstan', 2000, 20000000, 3, 1), ('ZMB', 'Zambia', 1000, 20000000, 1, 1),
('MWI', 'Malawi', 1000, 21000000, 1, 1), ('ECU', 'Ecuador', 2000, 18000000, 2, 1), ('SYR', 'Syria', 2000, 23000000, 1, 1),
('NLD', 'Netherlands', 2000, 18000000, 5, 1), ('GTM', 'Guatemala', 1000, 18000000, 2, 1), ('KHM', 'Cambodia', 1000, 17000000, 2, 1),
('SEN', 'Senegal', 1000, 17500000, 2, 1), ('TCD', 'Chad', 1000, 17000000, 1, 1), ('SOM', 'Somalia', 1000, 18000000, 1, 1),
('ZWE', 'Zimbabwe', 1000, 16000000, 1, 1), ('GIN', 'Guinea', 1000, 14000000, 1, 1), ('RWA', 'Rwanda', 1000, 14000000, 1, 1),
('BEN', 'Benin', 1000, 13500000, 1, 1), ('BDI', 'Burundi', 1000, 13000000, 1, 1), ('TUN', 'Tunisia', 1000, 12500000, 2, 1),
('BOL', 'Bolivia', 1000, 12000000, 2, 1), ('BEL', 'Belgium', 1000, 12000000, 5, 1), ('HTI', 'Haiti', 1000, 11500000, 1, 1),
('CUB', 'Cuba', 2000, 11000000, 2, 1), ('DOM', 'Dominican Rep.', 1000, 11300000, 2, 1), ('SSD', 'South Sudan', 1000, 11000000, 1, 1),
('SWE', 'Sweden', 1000, 10500000, 5, 1), ('CZE', 'Czechia', 1000, 10500000, 4, 1), ('JOR', 'Jordan', 1000, 11000000, 2, 1),
('GRC', 'Greece', 1000, 10300000, 3, 1), ('PRT', 'Portugal', 1000, 10300000, 4, 1), ('AZE', 'Azerbaijan', 1000, 10000000, 3, 1),
('ARE', 'United Arab Emirates', 2000, 10000000, 5, 1), ('HUN', 'Hungary', 1000, 9600000, 4, 1), ('BLR', 'Belarus', 2000, 9500000, 2, 1),
('ISR', 'Israel', 4000, 9500000, 5, 1), ('AUT', 'Austria', 1000, 9000000, 5, 1), ('CHE', 'Switzerland', 1000, 8900000, 5, 1);

INSERT INTO partida_paises (partida_id, pais_id, conquistado, color_tactico) VALUES (1, 1, TRUE, '#3b82f6'), (1, 2, FALSE, '#1e293b');

INSERT INTO arbol_habilidades (tipo, nro_habilidades) VALUES (1, 15), (2, 17);

INSERT INTO habilidades (habilidad_id, arbol_id, nombre, descripcion, costo, categoria, rama, eje_x, eje_y) VALUES
('D_ROOT', 1, 'Protocolo de Despertar', 'Activación del Núcleo Táctico', 1000, 'desarrollo', 'Origen', 200, 2000),
('D_B1_1', 1, 'Extracción Profunda', '+5% Ingresos Oro', 5000, 'desarrollo', 'Bifurcacion', 600, 1500),
('D_B1_2', 1, 'Redes Neuronales Básicas', '+5% Eficiencia Global', 5000, 'desarrollo', 'Bifurcacion', 600, 2000),
('D_B1_3', 1, 'Gestión de Flotas Auto', '-5% Costo Despliegue', 5000, 'desarrollo', 'Bifurcacion', 600, 2500),
('D_EXP_1', 1, 'Minería Suboceánica', '+10% Ingresos Oro', 18000, 'desarrollo', 'Expansion', 1100, 1000),
('D_EXP_2', 1, 'Procesadores Cuánticos', '+10% Eficiencia Global', 18000, 'desarrollo', 'Expansion', 1100, 1500),
('D_EXP_3', 1, 'Algoritmos Financieros', '+15% Ingresos Oro', 18000, 'desarrollo', 'Expansion', 1100, 2000),
('D_EXP_4', 1, 'Nodos Logísticos Subterráneos', '-10% Costo Despliegue', 18000, 'desarrollo', 'Expansion', 1100, 2500),
('D_EXP_5', 1, 'Lanzamiento de Microsatélites', '+10% Visión Táctica', 18000, 'desarrollo', 'Expansion', 1100, 3000),
('D_CONV_1', 1, 'Perforación Mantélica', '+20% Ingresos Oro', 50000, 'desarrollo', 'Convergencia', 1600, 1500),
('D_CONV_2', 1, 'IA Directiva de Producción', '+20% Velocidad Construcción', 50000, 'desarrollo', 'Convergencia', 1600, 2000),
('D_CONV_3', 1, 'Trenes Maglev Transcontinentales', '+15% Reserva Máxima', 50000, 'desarrollo', 'Convergencia', 1600, 2500),
('D_SUPER_1', 1, 'Mente Enjambre de Servidores', '-30% Costo Total', 120000, 'desarrollo', 'SuperNodos', 2200, 1750),
('D_SUPER_2', 1, 'Singularidad Tecnológica', 'Desbloquea Todo Nivel Máximo', 120000, 'desarrollo', 'SuperNodos', 2200, 2250),
('D_ULTIMATE', 1, 'Asimilación Planetaria Total', 'Conquista Instantánea Sutil', 300000, 'desarrollo', 'Definitiva', 2800, 2000),

('M_ROOT', 2, 'Doctrina de Guerra Total', 'Activación del Comando Supremo', 1000, 'militar', 'Origen', 200, 2000),
('M_B1_1', 2, 'Infantería Mecanizada', '+10% Movilidad Terrestre', 5000, 'militar', 'Bifurcacion', 600, 1250),
('M_B1_2', 2, 'Blindaje Reactivo', '+15% HP Vehículos', 5000, 'militar', 'Bifurcacion', 600, 1750),
('M_B1_3', 2, 'Balística Avanzada', '+15% Daño Artillería', 5000, 'militar', 'Bifurcacion', 600, 2250),
('M_B1_4', 2, 'Guerra Electrónica', '+10% Evasión Global', 5000, 'militar', 'Bifurcacion', 600, 2750),
('M_EXP_1', 2, 'Implantes de Reflejos Neurales', '+20% Daño Infantería', 18000, 'militar', 'Expansion', 1100, 1000),
('M_EXP_2', 2, 'Chasis de Combate Exo', '+15% HP Infantería', 18000, 'militar', 'Expansion', 1100, 1400),
('M_EXP_3', 2, 'Inyecciones de Nanobots Médicos', '-15% Tasa de Mortalidad', 18000, 'militar', 'Expansion', 1100, 1800),
('M_EXP_4', 2, 'Cargas de Plasma Térmico', '+20% Perforación', 18000, 'militar', 'Expansion', 1100, 2200),
('M_EXP_5', 2, 'Inhibidores de Espectro', '-15% Precisión Enemiga', 18000, 'militar', 'Expansion', 1100, 2600),
('M_EXP_6', 2, 'Algoritmos de Ciberataque', 'Sabotaje de Sistemas IA', 18000, 'militar', 'Expansion', 1100, 3000),
('M_CONV_1', 2, 'Exoesqueletos de Asalto', '+25% Ataque Terrestre', 50000, 'militar', 'Convergencia', 1600, 1250),
('M_CONV_2', 2, 'Blindados de Fusión Pesada', '+30% Armadura Vehículos', 50000, 'militar', 'Convergencia', 1600, 1750),
('M_CONV_3', 2, 'Artillería Termobárica', '+35% Daño de Área', 50000, 'militar', 'Convergencia', 1600, 2250),
('M_CONV_4', 2, 'Ciberguerra de Enjambres', 'Desactiva Defensas', 50000, 'militar', 'Convergencia', 1600, 2750),
('M_ORB_1', 2, 'Silos de Lanzamiento Suborbital', 'Lanzamiento Rápido', 120000, 'militar', 'Orbital', 2100, 1250),
('M_ORB_2', 2, 'Escudo Deflector de Energía', 'Inmunidad Temporal', 120000, 'militar', 'Orbital', 2100, 1750),
('M_ORB_3', 2, 'Láseres de Precisión Orbital', '+40% Daño de Precisión', 120000, 'militar', 'Orbital', 2100, 2250),
('M_ORB_4', 2, 'Drones de Reconocimiento', 'Revelado Total de Niebla', 120000, 'militar', 'Orbital', 2100, 2750),
('M_PROTO_1', 2, 'Enjambres de Drones Autónomos', 'Ataque Múltiple', 300000, 'militar', 'Prototipos', 2700, 1750),
('M_PROTO_2', 2, 'Artillería Orbital de Iones', 'Desintegración Nodos', 300000, 'militar', 'Prototipos', 2700, 2250),
('M_ULTIMATE', 2, 'Iniciativa de Destrucción Mutua', 'Aniquilación Instantánea', 600000, 'militar', 'Definitiva', 3300, 2000);

INSERT INTO tropas (nombre_tropa, costo, ataque, defensa) VALUES 
('Milicia Ligera', 100, 15, 10), ('Infantería Pesada', 150, 20, 25), ('Exploradores', 250, 35, 15), 
('Tanques Ligeros', 400, 50, 30), ('Cañones Plasma', 500, 60, 5);      

INSERT INTO infanterias (tropa_id, bono_defensa) VALUES (1, 5), (2, 10);
INSERT INTO caballerias (tropa_id, bono_ataque) VALUES (3, 20), (4, 7);
INSERT INTO artillerias (tropa_id, bono_ataque, bono_defensa) VALUES (5, 25, 2);

INSERT INTO tiempos (fecha_partida, velocidad, pausado) VALUES ('2026-05-28 00:00:00', 1, FALSE), ('2026-05-28 12:30:00', 2, FALSE);


INSERT INTO eventos (titulo, descripcion, bonificacion, tipo) VALUES
('SABOTAJE EN LA RED CLIMÁTICA', 'Tormenta de arena ionizada inducida por hackeo interrumpe los canales de extracción. Impacto: -500 Créditos de Oro.', -500, 'alert'),
('DESERCIÓN MASIVA EN FRONTERA', 'Ciberataque desactiva los chips neurales de un regimiento. Impacto: -100 Unidades de Caballería.', -100, 'alert'),
('VIRUS EN EL SISTEMA LOGÍSTICO', 'Ransomware cuántico paraliza armamento pesado. Impacto: -50 Artillería.', -50, 'alert'),
('COLAPSO DE NODO FINANCIERO', 'Nodo bancario drenado por exploit de día cero. Impacto: -800 Créditos de Oro.', -800, 'alert'),
('MOTÍN EN GUARNICIÓN REMOTA', 'Rebelión en complejo ártico Vostok-7. Impacto: -150 Infantería.', -150, 'alert'),
('SABOTAJE EN CONVOY BLINDADO', 'Convoy emboscado por células insurgentes. Impacto: -75 Caballería.', -75, 'alert'),
('ATAQUE A CADENA DE SUMINISTRO', 'Firmware defectuoso inutiliza lote de municiones. Impacto: -300 Créditos de Oro.', -300, 'alert'),
('CAMPAÑA DE CONSCRIPCIÓN SATELITAL', 'Señal de propaganda motiva a reservistas locales. Impacto: +200 Infantería.', 200, 'success'),
('EXTRACCIÓN DE CRIPTOMINAS SIBERIANAS', 'Reactivación de granja de servidores siberiana. Impacto: +1000 Créditos de Oro.', 1000, 'success'),
('RECLUTAMIENTO DE MERCENARIOS NÓMADAS', 'Clan del desierto del Sahel acepta nuestro contrato. Impacto: +120 Caballería.', 120, 'success'),
('DECOMISO DE ARSENAL ENEMIGO', 'Asalto a depósito subterráneo enemigo recupera artillería. Impacto: +80 Artillería.', 80, 'success'),
('CONTRATO CORPORATIVO SELLADO', 'Nexus-Dynamics firma acuerdo de suministro exclusivo. Impacto: +1500 Créditos de Oro.', 1500, 'success'),
('COSECHA DE DATOS EXITOSA', 'Scraping cuántico monetizado en mercado negro. Impacto: +700 Créditos de Oro.', 700, 'success'),
('REACTIVACIÓN DE AUTÓMATAS BÉLICOS', 'Autómatas de combate reactivados en catacumbas. Impacto: +300 Infantería.', 300, 'success'),
('TREGUA DIGITAL ESTABLECIDA', 'Sistemas de cifrado rivales detectaron sondas. Tregua temporal firmada. Sin impacto.', 0, 'info'),
('ANOMALÍA ELECTROMAGNÉTICA DETECTADA', 'Fluctuación magnética masiva sobre el Triángulo de las Bermudas. Monitoreo activo.', 0, 'info'),
('TRANSMISIÓN INTERCEPTADA', 'Inteligencia descifró alianza temporal enemiga. Alto Mando evalúa.', 0, 'info'),
('MIGRACIÓN MASIVA EN FRONTERA SUR', 'Oleadas de civiles desplazados en puntos de control. Sin impacto militar.', 0, 'info'),
('ACTUALIZACIÓN DE FIRMWARE GLOBAL', 'El Comando Central ha desplegado parche v7.41. Tiempo de inactividad de 6 horas.', 0, 'info'),
('ECLIPSE SOLAR TÁCTICO', 'Interferencia temporal con satélites. Comunicaciones al 40% de capacidad.', 0, 'info');

INSERT INTO eventos_tiempo (evento_id, tiempo_id) VALUES (1, 1), (2, 2);