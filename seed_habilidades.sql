INSERT INTO
    habilidades (
        habilidad_id,
        nombre,
        descripcion,
        costo,
        categoria,
        rama,
        eje_x,
        eje_y
    )
VALUES
    -- ── Rama: Economía ─────────────────────────────────────────────────────────
    -- Nivel 1
    (
        'D_ECO_1',
        'Mercados Libres',
        'Liberaliza los circuitos comerciales internos, aumentando el ingreso diario de territorios conquistados en un 5%. Primer escalón hacia la hegemonía financiera.',
        5000,
        'desarrollo',
        'Economía',
        100,
        1000
    ),
    -- Nivel 2
    (
        'D_ECO_2',
        'Algoritmos Financieros',
        'Implementa sistemas de trading algorítmico y análisis predictivo. Aumenta en +15% todos los ingresos generados por territorios bajo control. Sinergia activa durante la simulación.',
        15000,
        'desarrollo',
        'Economía',
        400,
        1000
    ),
    -- Nivel 3
    (
        'D_ECO_3',
        'Hegemonía Monetaria',
        'Establece el crédito de la facción como moneda de reserva global. Añade un bono de expansión: +8% de ingresos adicionales por cada nación conquistada más allá de la quinta.',
        35000,
        'desarrollo',
        'Economía',
        700,
        1000
    ),
    -- ── Rama: Expansión ────────────────────────────────────────────────────────
    -- Nivel 1
    (
        'D_EXP_1',
        'Logística Avanzada',
        'Optimiza las cadenas de suministro militares y civiles, reduciendo el coste de mantenimiento de tropas en un 10% y el tiempo de movilización.',
        6000,
        'desarrollo',
        'Expansión',
        100,
        1150
    ),
    -- Nivel 2
    (
        'D_EXP_2',
        'Red de Satélites',
        'Lanza una constelación de satélites de comunicación y reconocimiento. Proporciona inteligencia en tiempo real sobre movimientos de ejércitos enemigos.',
        18000,
        'desarrollo',
        'Expansión',
        400,
        1150
    ),
    -- Nivel 3
    (
        'D_EXP_3',
        'Dominio Orbital',
        'Establece supremacía en la órbita baja terrestre. Permite coordinación de ataques precisos desde el espacio, otorgando ventaja táctica decisiva en invasiones.',
        40000,
        'desarrollo',
        'Expansión',
        700,
        1150
    ),
    -- ── Rama: Tecnología ───────────────────────────────────────────────────────
    -- Nivel 1
    (
        'D_TEC_1',
        'Investigación Básica',
        'Establece centros de I+D en los territorios controlados. Reduce el tiempo de desbloqueo de todas las tecnologías futuras en un 10%.',
        4000,
        'desarrollo',
        'Tecnología',
        100,
        1300
    ),
    -- Nivel 2
    (
        'D_TEC_2',
        'Inteligencia Artificial',
        'Despliega sistemas de IA para optimización logística, predicción de eventos y gestión de recursos. Pilar estratégico para las tecnologías de nivel 3.',
        20000,
        'desarrollo',
        'Tecnología',
        400,
        1300
    ),
    -- Nivel 3 — Convergente: requiere las tres ramas
    (
        'D_TEC_3',
        'Singularidad Tecnológica',
        'La IA alcanza capacidad de auto-mejora controlada. Efecto global permanente: +20% a todos los ingresos, -15% al costo de todas las tropas, +10% de velocidad de investigación.',
        80000,
        'desarrollo',
        'Tecnología',
        700,
        1300
    );

INSERT INTO
    habilidades (
        habilidad_id,
        nombre,
        descripcion,
        costo,
        categoria,
        rama,
        eje_x,
        eje_y
    )
VALUES
    -- ── Rama: Infantería ───────────────────────────────────────────────────────
    -- Nivel 1
    (
        'M_11',
        'Reclutamiento Masivo',
        'Activa protocolos de movilización masiva. Permite reclutar infantería a un coste un 20% menor y en mayores cantidades por ciclo.',
        8000,
        'militar',
        'Infantería',
        100,
        1700
    ),
    -- Nivel 2
    (
        'M_12',
        'Tácticas de Asalto',
        'Dota a los batallones de infantería con manuales de combate urbano y asalto coordinado. Aumenta el poder de ataque de infantería en un 25%.',
        20000,
        'militar',
        'Infantería',
        400,
        1700
    ),
    -- Nivel 3
    (
        'M_13',
        'Supersoldados Mejorados',
        'Programa de mejora genética y armadura exoesquelética para tropas de élite. Las unidades de infantería obtienen capacidades de combate excepcionales.',
        45000,
        'militar',
        'Infantería',
        700,
        1700
    ),
    -- ── Rama: Caballería ───────────────────────────────────────────
    -- Nivel 1
    (
        'M_21',
        'Motorización',
        'Motoriza las unidades de caballería con vehículos blindados ligeros. Aumenta la velocidad de despliegue y la movilidad táctica en el campo de batalla.',
        10000,
        'militar',
        'Caballería',
        100,
        1850
    ),
    -- Nivel 2
    (
        'M_22',
        'Blindados Pesados',
        'Incorpora carros de combate de última generación. Las unidades de caballería aumentan su poder ofensivo en un 30% y su resistencia ante artillería enemiga.',
        25000,
        'militar',
        'Caballería',
        400,
        1850
    ),
    -- Nivel 3
    (
        'M_23',
        'Enjambre de Drones de Combate',
        'Integra enjambres de drones autónomos coordinados por IA táctica. Proporciona superioridad aérea local y capacidad de penetración en posiciones reforzadas.',
        50000,
        'militar',
        'Caballería',
        700,
        1850
    ),
    -- ── Rama: Artillería ───────────────────────────────────────────────────────
    -- Nivel 1
    (
        'M_31',
        'Artillería de Campaña',
        'Despliega baterías de artillería móviles con munición de alta precisión. Aumenta el daño de artillería en un 20% y el alcance efectivo.',
        9000,
        'militar',
        'Artillería',
        100,
        2000
    ),
    -- Nivel 2
    (
        'M_32',
        'Misiles Guiados',
        'Equipa los sistemas de artillería con misiles de guía láser y GPS. Permite ataques quirúrgicos a infraestructuras clave del enemigo.',
        28000,
        'militar',
        'Artillería',
        400,
        2000
    ),
    -- Nivel 3
    (
        'M_33',
        'Artillería Orbital',
        'Proyectiles lanzados desde plataformas orbitales. Capacidad de bombardeo estratégico en cualquier punto del mapa con tiempo de respuesta mínimo.',
        55000,
        'militar',
        'Artillería',
        700,
        2000
    ),
    -- ── Rama Especial: Investigación Médica ────────────────────────────────────
    -- Nivel 1
    (
        'M_EXP_1',
        'Medicina de Campo',
        'Establece unidades médicas integradas en cada batallón. Reduce las bajas propias en combate y acelera la recuperación entre batallas.',
        7000,
        'militar',
        'Médico',
        100,
        2150
    ),
    -- Nivel 2
    (
        'M_EXP_2',
        'Biotecnología Táctica',
        'Desarrolla sueros de rendimiento físico y resistencia al dolor. Las tropas propias obtienen mayor capacidad de combate sostenido en operaciones prolongadas.',
        22000,
        'militar',
        'Médico',
        400,
        2150
    ),
    -- Nivel 3 
    (
        'M_EXP_3',
        'Inyecciones de Nanobots Médicos',
        'Nanobots médicos de autorreparación inyectados a todas las tropas. Efecto pasivo global: reduce la tasa de mortalidad de territorios conquistados en un -15% permanente.',
        48000,
        'militar',
        'Médico',
        700,
        2150
    ),
    -- ── Habilidad Maestra (Convergente) ────────────────────────────────────────
    (
        'M_SEC',
        'Cibernética de Vanguardia',
        'Fusiona las tres ramas militares en un sistema de combate integrado: exoesqueletos, drones coordinados y artillería orbital bajo un único nodo de IA. Otorga supremacía militar total.',
        120000,
        'militar',
        'Especial',
        1050,
        1850
    );

INSERT INTO
    habilidad_prerrequisitos (habilidad_id, habilidad_requerida_id)
VALUES
    -- ── Rama Economía ──────────────────────────────────────────────────────────
    ('D_ECO_2', 'D_ECO_1'),
    ('D_ECO_3', 'D_ECO_2'),
    -- ── Rama Expansión ─────────────────────────────────────────────────────────
    ('D_EXP_2', 'D_EXP_1'),
    ('D_EXP_3', 'D_EXP_2'),
    -- ── Rama Tecnología ────────────────────────────────────────────────────────
    ('D_TEC_2', 'D_TEC_1'),
    -- Singularidad Tecnológica: convergente, requiere las tres ramas al nivel 3
    ('D_TEC_3', 'D_ECO_3'),
    ('D_TEC_3', 'D_EXP_3'),
    ('D_TEC_3', 'D_TEC_2'),
    -- ── Rama Infantería ────────────────────────────────────────────────────────
    ('M_12', 'M_11'),
    ('M_13', 'M_12'),
    -- ── Rama Caballería ────────────────────────────────────────────────────────
    ('M_22', 'M_21'),
    ('M_23', 'M_22'),
    -- ── Rama Artillería ────────────────────────────────────────────────────────
    ('M_32', 'M_31'),
    ('M_33', 'M_32'),
    -- ── Rama Médica ────────────────────────────────────────────────────────────
    ('M_EXP_2', 'M_EXP_1'),
    ('M_EXP_3', 'M_EXP_2'),
    -- ── Habilidad Maestra: Cibernética de Vanguardia ───────────────────────────
    ('M_SEC', 'M_13'),
    ('M_SEC', 'M_23'),
    ('M_SEC', 'M_33');