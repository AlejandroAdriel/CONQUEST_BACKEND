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