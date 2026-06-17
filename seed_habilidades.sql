-- SECCIÓN 1: HABILIDADES (Desarrollo y Doctrina Militar)
-- ─────────────────────────────────────────────────────────────────────────────
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
    -- ===================== INFRAESTRUCTURA (DESARROLLO) =====================
    (
        'D_ROOT',
        'Protocolo de Inicialización: Despertar',
        'Inicializa el núcleo táctico de la IA y el mapeo satelital básico. Requisito fundamental para toda investigación. Bono: Desbloquea la rama de desarrollo.',
        2000,
        'desarrollo',
        'Origen',
        200,
        2000
    ),
    (
        'D_B1_1',
        'Red de Extracción Cuántica',
        'Optimiza la minería de recursos descentralizada en zonas ocupadas. Bono: Aumenta la generación diaria de oro de los territorios en un +10%.',
        12000,
        'desarrollo',
        'Bifurcacion',
        600,
        1500
    ),
    (
        'D_B1_2',
        'Algoritmos de Enrutamiento Neuronal',
        'Establece autopistas de datos para coordinar recursos locales. Bono: Aumenta la tasa de crecimiento económico diario en un +25%.',
        12000,
        'desarrollo',
        'Bifurcacion',
        600,
        2000
    ),
    (
        'D_B1_3',
        'Logística Automatizada de Flotas',
        'Automatiza las trayectorias de los vehículos de suministro terrestres. Bono: Reduce el costo en oro para movilizar tropas en un -10%.',
        12000,
        'desarrollo',
        'Bifurcacion',
        600,
        2500
    ),
    (
        'D_EXP_1',
        'Minería de Yacimientos Profundos',
        'Despliega taladros térmicos automatizados para metales raros. Bono: Aumenta la generación diaria de oro de los territorios en un +15% adicional.',
        30000,
        'desarrollo',
        'Expansion',
        1100,
        1000
    ),
    (
        'D_EXP_2',
        'Coprocesadores Cuánticos de Silicio',
        'Integra unidades de coprocesamiento para acelerar las finanzas. Bono: Reduce el costo diario de mantenimiento de todas tus tropas en un -15%.',
        30000,
        'desarrollo',
        'Expansion',
        1100,
        1500
    ),
    (
        'D_EXP_3',
        'Algoritmos Financieros',
        'Modelos macroeconómicos predictivos para arbitraje y comercio internacional. Bono: Aumenta la generación diaria de oro de los territorios en un +20% adicional.',
        30000,
        'desarrollo',
        'Expansion',
        1100,
        2000
    ),
    (
        'D_EXP_4',
        'Nodos Logísticos Subterráneos',
        'Construye terminales de almacenamiento blindadas bajo tierra. Bono: Reduce el costo en oro para movilizar tropas en un -20% adicional.',
        30000,
        'desarrollo',
        'Expansion',
        1100,
        2500
    ),
    (
        'D_EXP_5',
        'Constelación de Microsatélites',
        'Despliega una red orbital de rastreo geográfico y comercial. Bono: Reduce el tiempo de viaje de todas las invasiones en 7 días virtuales.',
        30000,
        'desarrollo',
        'Expansion',
        1100,
        3000
    ),
    (
        'D_CONV_1',
        'Perforación Geotérmica Mantélica',
        'Explota la energía calórica profunda para alimentar los mainframes. Bono: Aumenta la generación diaria de oro de los territorios en un +25% adicional.',
        75000,
        'desarrollo',
        'Convergencia',
        1600,
        1500
    ),
    (
        'D_CONV_2',
        'IA Directiva de Producción Automatizada',
        'Una IA ejecutiva coordina los recursos de guerra de manera óptima. Bono: Reduce el costo diario de mantenimiento de todas tus tropas en un -25% adicional.',
        75000,
        'desarrollo',
        'Convergencia',
        1600,
        2000
    ),
    (
        'D_CONV_3',
        'Red de Trenes Maglev Transcontinentales',
        'Instala líneas ferroviarias de levitación magnética ultrarrápida. Bono: Aumenta el límite de movilización de población al 10% (Base: 5%).',
        75000,
        'desarrollo',
        'Convergencia',
        1600,
        2500
    ),
    (
        'D_SUPER_1',
        'Mente Enjambre de Servidores Cuánticos',
        'Sincroniza todos los data centers regionales bajo una sola red cuántica. Bono: Reduce el costo de movilización de tropas en un -35% adicional.',
        180000,
        'desarrollo',
        'SuperNodos',
        2200,
        1750
    ),
    (
        'D_SUPER_2',
        'Singularidad Tecnológica',
        'La IA alcanza la automejora exponencial optimizando la biósfera civil. Bono: Aumenta la natalidad efectiva de tus países en un +25% (mayor crecimiento poblacional).',
        180000,
        'desarrollo',
        'SuperNodos',
        2200,
        2250
    ),
    (
        'D_ULTIMATE',
        'Asimilación Planetaria Total',
        'Integra el núcleo de la IA directamente en la red de los gobiernos globales. Bono: Otorga una probabilidad del 2% diario de anexar un país hostil de manera automática y pacífica.',
        450000,
        'desarrollo',
        'Definitiva',
        2800,
        2000
    ),
    -- ===================== DOCTRINA MILITAR =====================
    (
        'M_ROOT',
        'Doctrina de Guerra Total',
        'Establece el protocolo primario de movilización bélica global. Requisito para toda la doctrina militar. Bono: Desbloquea la rama militar.',
        1000,
        'militar',
        'Origen',
        200,
        2000
    ),
    (
        'M_B1_1',
        'Tácticas de Infantería Ligera',
        'Optimiza el armamento individual y la cohesión de escuadras básicas. Bono: Aumenta el poder de combate de la Infantería en un +15%.',
        5000,
        'militar',
        'Bifurcacion',
        600,
        1250
    ),
    (
        'M_B1_2',
        'Tácticas de Caballería Ligera',
        'Estrategia enfocada en asaltos rápidos con vehículos blindados ligeros. Bono: Aumenta el poder de combate de la Caballería en un +15%.',
        5000,
        'militar',
        'Bifurcacion',
        600,
        1750
    ),
    (
        'M_B1_3',
        'Tácticas de Artillería Ligera',
        'Software de cálculo de trayectoria integrado en piezas de artillería básica. Bono: Aumenta el poder de combate de la Artillería en un +15%.',
        5000,
        'militar',
        'Bifurcacion',
        600,
        2250
    ),
    (
        'M_B1_4',
        'Estrategia de Fortificación Táctica',
        'Despliega búnkeres de campaña temporales y fortines móviles. Bono: Reduce las bajas en combate del jugador en un -10%.',
        5000,
        'militar',
        'Bifurcacion',
        600,
        2750
    ),
    (
        'M_EXP_1',
        'Implantes de Reflejos Neurales',
        'Chips neurales que aceleran los tiempos de respuesta del infante en combate. Bono: Aumenta el poder de combate de la Infantería en un +25% adicional.',
        18000,
        'militar',
        'Expansion',
        1100,
        1000
    ),
    (
        'M_EXP_2',
        'Cuerpos de Ingenieros de Combate',
        'Unidades especializadas en demolición y franqueo de obstáculos. Bono: Reduce el poder defensivo de la IA enemiga en un -15%.',
        18000,
        'militar',
        'Expansion',
        1100,
        1400
    ),
    (
        'M_EXP_3',
        'Protocolo de Biorecuperación Avanzado',
        'Nanotecnología médica aplicada a primeros auxilios en combate. Bono: Reduce la tasa de mortalidad en conquistados en un -15% permanente (ayuda a recuperar población).',
        18000,
        'militar',
        'Expansion',
        1100,
        1800
    ),
    (
        'M_EXP_4',
        'Baterías de Saturación Balística',
        'Doctrina de bombardeo masivo coordinado por satélite. Bono: Aumenta el poder de combate de la Artillería en un +25% adicional.',
        18000,
        'militar',
        'Expansion',
        1100,
        2200
    ),
    (
        'M_EXP_5',
        'Doctrina Blitzkrieg',
        'Estrategia de avance blindado rápido centrada en la caballería. Bono: Aumenta el poder de combate de la Caballería en un +25% adicional.',
        18000,
        'militar',
        'Expansion',
        1100,
        2600
    ),
    (
        'M_EXP_6',
        'Ciber-Sabotaje de Servidores de Reclutamiento',
        'Troyano que altera las cuotas de reclutamiento enemigas. Bono: Reduce el volumen de reclutamiento de tropas de la IA en un -25% de forma global.',
        18000,
        'militar',
        'Expansion',
        1100,
        3000
    ),
    (
        'M_CONV_1',
        'Doctrina de Asalto Aerotransportado',
        'Despliegue directo de tropas aerotransportadas de élite tras líneas enemigas. Bono: Aumenta el poder de combate de la Infantería en un +35% adicional.',
        50000,
        'militar',
        'Convergencia',
        1600,
        1250
    ),
    (
        'M_CONV_2',
        'Logística de Suministros Blindados',
        'Distribución de suministro inteligente y blindaje modular de vehículos. Bono: Reduce las bajas en combate del jugador en un -20% adicional.',
        50000,
        'militar',
        'Convergencia',
        1600,
        1750
    ),
    (
        'M_CONV_3',
        'Artillería de Precisión Quirúrgica',
        'Proyectiles guiados por láser de alta penetración. Bono: Aumenta el poder de combate de la Artillería en un +35% adicional.',
        50000,
        'militar',
        'Convergencia',
        1600,
        2250
    ),
    (
        'M_CONV_4',
        'Inyección Electromagnética Regional (EMP)',
        'Pulso EMP localizado que inhabilita las comunicaciones enemigas. Bono: Reduce el volumen de reclutamiento de la IA en el país atacado en un -50%.',
        50000,
        'militar',
        'Convergencia',
        1600,
        2750
    ),
    (
        'M_ORB_1',
        'Silos de Inserción Orbital Inmediata',
        'Cápsulas de caída desde órbita baja para lanzar infantería pesada directo al combate. Bono: Aumenta el poder de combate de la Infantería en un +40% y reduce sus bajas en un -15% general.',
        120000,
        'militar',
        'Orbital',
        2100,
        1250
    ),
    (
        'M_ORB_2',
        'Red de Escudos Deflectores de Plasma',
        'Domos electromagnéticos protectores en el campo de batalla. Bono: Reduce las bajas en combate del jugador en un -30% en general.',
        120000,
        'militar',
        'Orbital',
        2100,
        1750
    ),
    (
        'M_ORB_3',
        'Láseres de Precisión Orbital',
        'Fuego de apoyo orbital pesado sincronizado desde el espacio. Bono: Aumenta el poder de combate de la Caballería y de la Artillería en un +35% adicional.',
        120000,
        'militar',
        'Orbital',
        2100,
        2250
    ),
    (
        'M_ORB_4',
        'Drones de Reconocimiento Estratosférico',
        'Drones solares que limpian la interferencia local de comunicaciones. Bono: Disipa la niebla de guerra global, mostrando las tropas enemigas de todos los países de manera permanente.',
        120000,
        'militar',
        'Orbital',
        2100,
        2750
    ),
    (
        'M_PROTO_1',
        'Enjambres de Drones Asesinos Autónomos',
        'Millones de microdrones suicidas coordinados por una sub-IA bélica. Bono: Aumenta el poder de combate de todas tus tropas en un +40% general.',
        300000,
        'militar',
        'Prototipos',
        2700,
        1750
    ),
    (
        'M_PROTO_2',
        'Artillería Orbital de Iones',
        'Cañón orbital de partículas cargadas que destruye fortificaciones. Bono: Reduce a la mitad (-50%) el poder defensivo de la IA enemiga a nivel mundial.',
        300000,
        'militar',
        'Prototipos',
        2700,
        2250
    ),
    (
        'M_ULTIMATE',
        'Ciber-Sometimiento Global: Protocolo Omega',
        'Inyección de un supervirus en la red de mando global de la IA. Bono: Desactiva drasticamente el reclutamiento de tropas de la IA a nivel mundial y reduce su defensa en un -40% de forma permanente.',
        700000,
        'militar',
        'Definitiva',
        3300,
        2000
    );

-- ─────────────────────────────────────────────────────────────────────────────
-- SECCIÓN 2: PRERREQUISITOS (habilidad_prerrequisitos)
-- ─────────────────────────────────────────────────────────────────────────────
INSERT INTO
    habilidad_prerrequisitos (habilidad_id, habilidad_requerida_id)
VALUES
    -- Rama Desarrollo
    ('D_B1_1', 'D_ROOT'),
    ('D_B1_2', 'D_ROOT'),
    ('D_B1_3', 'D_ROOT'),
    ('D_EXP_1', 'D_B1_1'),
    ('D_EXP_2', 'D_B1_1'),
    ('D_EXP_2', 'D_B1_2'),
    ('D_EXP_3', 'D_B1_2'),
    ('D_EXP_4', 'D_B1_2'),
    ('D_EXP_4', 'D_B1_3'),
    ('D_EXP_5', 'D_B1_3'),
    ('D_CONV_1', 'D_EXP_1'),
    ('D_CONV_1', 'D_EXP_2'),
    ('D_CONV_2', 'D_EXP_2'),
    ('D_CONV_2', 'D_EXP_4'),
    ('D_CONV_3', 'D_EXP_4'),
    ('D_CONV_3', 'D_EXP_5'),
    ('D_SUPER_1', 'D_CONV_1'),
    ('D_SUPER_1', 'D_CONV_2'),
    ('D_SUPER_2', 'D_CONV_2'),
    ('D_SUPER_2', 'D_CONV_3'),
    ('D_ULTIMATE', 'D_SUPER_1'),
    ('D_ULTIMATE', 'D_SUPER_2'),
    -- Rama Doctrina Militar
    ('M_B1_1', 'M_ROOT'),
    ('M_B1_2', 'M_ROOT'),
    ('M_B1_3', 'M_ROOT'),
    ('M_B1_4', 'M_ROOT'),
    ('M_EXP_1', 'M_B1_1'),
    ('M_EXP_2', 'M_B1_1'),
    ('M_EXP_2', 'M_B1_2'),
    ('M_EXP_3', 'M_B1_2'),
    ('M_EXP_4', 'M_B1_3'),
    ('M_EXP_5', 'M_B1_3'),
    ('M_EXP_5', 'M_B1_4'),
    ('M_EXP_6', 'M_B1_4'),
    ('M_CONV_1', 'M_EXP_1'),
    ('M_CONV_1', 'M_EXP_2'),
    ('M_CONV_1', 'M_EXP_3'),
    ('M_CONV_2', 'M_EXP_2'),
    ('M_CONV_2', 'M_EXP_3'),
    ('M_CONV_2', 'M_EXP_4'),
    ('M_CONV_3', 'M_EXP_4'),
    ('M_CONV_3', 'M_EXP_5'),
    ('M_CONV_4', 'M_EXP_5'),
    ('M_CONV_4', 'M_EXP_6'),
    ('M_ORB_1', 'M_CONV_1'),
    ('M_ORB_2', 'M_CONV_1'),
    ('M_ORB_2', 'M_CONV_2'),
    ('M_ORB_3', 'M_CONV_2'),
    ('M_ORB_3', 'M_CONV_3'),
    ('M_ORB_4', 'M_CONV_3'),
    ('M_ORB_4', 'M_CONV_4'),
    ('M_PROTO_1', 'M_ORB_1'),
    ('M_PROTO_1', 'M_ORB_2'),
    ('M_PROTO_1', 'M_ORB_3'),
    ('M_PROTO_2', 'M_ORB_2'),
    ('M_PROTO_2', 'M_ORB_3'),
    ('M_PROTO_2', 'M_ORB_4'),
    ('M_ULTIMATE', 'M_PROTO_1'),
    ('M_ULTIMATE', 'M_PROTO_2');