INSERT INTO tropas (tropa_id, nombre_tropa, costo_base, multiplicador_combate) VALUES
(1, 'Cibersoldado de Asalto', 15, 1.0),
(2, 'Guardia de Neo-Tokio', 25, 1.2),
(3, 'Motorista de Asalto Cyber', 45, 1.5),
(4, 'Nómada del Desierto', 60, 1.8),
(5, 'Cañón de Plasma Pesado', 120, 3.0),
(6, 'Meca de Asedio Goliath', 250, 4.0),
(7, 'Recluta con Escudo', 10, 0.9),
(8, 'Espía Holográfico', 35, 1.1),
(9, 'Exo-Soldado Pesado', 50, 1.6),
(10, 'Cazador en Monorrueda', 55, 1.4),
(11, 'Jinete de Neodraco', 90, 2.2),
(12, 'Flanqueador Veloz', 40, 1.3),
(13, 'Lanzamisiles Enjambre', 150, 3.2),
(14, 'Mortero de Pulso EMP', 110, 2.5),
(15, 'Batería de Riel Magnético', 300, 5.0);

INSERT INTO infanterias (tropa_id, bono_defensa_trinchera) VALUES
(1, 1.5),
(2, 2.0),
(7, 2.5), 
(8, 1.2), 
(9, 3.0); 

INSERT INTO caballerias (tropa_id, bono_ataque_flanqueo) VALUES
(3, 2.5),
(4, 3.5),
(10, 2.0), 
(11, 4.0), 
(12, 1.8); 