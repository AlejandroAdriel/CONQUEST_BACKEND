# Registro de ENDPOINTS(GROUP BY, HAVING) - Supabase
Este archivo contiene los endpoints que reralizan operaciones complejas como GROUP BY y HAVING, se muestra el metodo, el link del endpoint, el codigo del endpoint y tla respuesta a la llamada.
---


# 1. Usuarios con más partidas jugadas

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/reporte_usuarios_mas_partidas`

Codigo:
```sql
CREATE OR REPLACE VIEW reporte_usuarios_mas_partidas AS
SELECT 
    u.username,
    u.correo,
    COUNT(j.partida_id) AS total_partidas_jugadas
FROM 
    usuarios u
JOIN 
    jugadores j ON u.usuario_id = j.usuario_id
GROUP BY 
    u.username, u.correo
HAVING 
    COUNT(j.partida_id) > 0
ORDER BY 
    total_partidas_jugadas DESC;
```

Respuesta:
```JSON
[
  {
    "username": "ADMIN",
    "correo": "admin@admin.com",
    "total_partidas_jugadas": 2
  },
  {
    "username": "CONQUEST>GTAVI",
    "correo": "jhoao.pereyra@ucsp.edu.pe",
    "total_partidas_jugadas": 1
  },
  {
    "username": "TESTOP",
    "correo": "test@conquest.com",
    "total_partidas_jugadas": 1
  },
  {
    "username": "DDD",
    "correo": "alejandro.quispe@ucsp.edu.pe",
    "total_partidas_jugadas": 1
  }
]
```
# 2. Tamaño de Ejércitos por Partida

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/reporte_ejercitos_por_partida`

Codigo:
```sql
CREATE OR REPLACE VIEW reporte_ejercitos_por_partida AS
SELECT 
    partida_id,
    COUNT(jugador_id) AS total_jugadores,
    SUM(tropas_infanteria + tropas_caballeria + tropas_artilleria) AS gran_total_tropas
FROM 
    jugadores
GROUP BY 
    partida_id
HAVING 
    COUNT(jugador_id) > 0
ORDER BY 
    gran_total_tropas DESC;
```

Respuesta:
```JSON
[
  {
    "partida_id": 5,
    "total_jugadores": 1,
    "gran_total_tropas": 13663
  },
  {
    "partida_id": 7,
    "total_jugadores": 1,
    "gran_total_tropas": 8680
  },
  {
    "partida_id": 4,
    "total_jugadores": 1,
    "gran_total_tropas": 4711
  },
  {
    "partida_id": 6,
    "total_jugadores": 1,
    "gran_total_tropas": 3600
  },
  {
    "partida_id": 2,
    "total_jugadores": 1,
    "gran_total_tropas": 3600
  }
]
```

# 3. Resumen de Habilidades por Rama

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/reporte_habilidades_por_rama`

Codigo:
```sql
CREATE OR REPLACE VIEW reporte_habilidades_por_rama AS
SELECT 
    rama,
    COUNT(habilidad_id) AS cantidad_habilidades,
    SUM(costo) AS costo_total_para_completar,
    AVG(costo) AS costo_promedio
FROM 
    habilidades
GROUP BY 
    rama
HAVING 
    COUNT(habilidad_id) >= 2
ORDER BY 
    costo_total_para_completar DESC;
```

Respuesta:
```JSON
[
  {
    "rama": "Definitiva",
    "cantidad_habilidades": 2,
    "costo_total_para_completar": 1150000,
    "costo_promedio": 575000.000000000000
  },
  {
    "rama": "Prototipos",
    "cantidad_habilidades": 2,
    "costo_total_para_completar": 600000,
    "costo_promedio": 300000.000000000000
  },
  {
    "rama": "Orbital",
    "cantidad_habilidades": 4,
    "costo_total_para_completar": 480000,
    "costo_promedio": 120000.000000000000
  },
  {
    "rama": "Convergencia",
    "cantidad_habilidades": 7,
    "costo_total_para_completar": 425000,
    "costo_promedio": 60714.285714285714
  },
  {
    "rama": "SuperNodos",
    "cantidad_habilidades": 2,
    "costo_total_para_completar": 360000,
    "costo_promedio": 180000.000000000000
  },
  {
    "rama": "Expansion",
    "cantidad_habilidades": 11,
    "costo_total_para_completar": 258000,
    "costo_promedio": 23454.545454545455
  },
  {
    "rama": "Bifurcacion",
    "cantidad_habilidades": 7,
    "costo_total_para_completar": 56000,
    "costo_promedio": 8000.0000000000000000
  },
  {
    "rama": "Origen",
    "cantidad_habilidades": 2,
    "costo_total_para_completar": 3000,
    "costo_promedio": 1500.0000000000000000
  }
]
```

# 4. Países HQ Más Populares

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/reporte_paises_hq_populares`

Codigo:
```sql
CREATE OR REPLACE VIEW reporte_paises_hq_populares AS
SELECT 
    hq_pais_id AS pais_base,
    COUNT(jugador_id) AS veces_elegido,
    SUM(oro) AS oro_total_acumulado
FROM 
    jugadores
GROUP BY 
    hq_pais_id
ORDER BY 
    veces_elegido DESC;
```

Respuesta:
```JSON
[
  {
    "pais_base": "Albania",
    "veces_elegido": 4,
    "oro_total_acumulado": 10000
  },
  {
    "pais_base": "Peru",
    "veces_elegido": 1,
    "oro_total_acumulado": 146
  }
]
```

# 5. Reporte Ranking Fuerza de Combate (Vista)

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/reporte_ranking_fuerza_combate`

Codigo:
```sql
CREATE OR REPLACE VIEW reporte_ranking_fuerza_combate AS
SELECT 
    u.username AS comandante,
    p.partida_id,
    pb.nombre_es AS pais_seleccionado,
    SUM(j.oro) AS total_oro,
    ROUND(
        (SUM(j.tropas_infanteria) * 1.16) + 
        (SUM(j.tropas_caballeria) * 1.64) + 
        (SUM(j.tropas_artilleria) * 3.54)
    ) AS fuerza_total_combate
FROM 
    jugadores j
JOIN 
    usuarios u ON j.usuario_id = u.usuario_id
JOIN 
    partidas p ON j.partida_id = p.partida_id
JOIN 
    paises_base pb ON j.hq_pais_id = pb.pais_id
GROUP BY 
    u.username, p.partida_id, pb.nombre_es
HAVING 
    SUM(j.tropas_infanteria + j.tropas_caballeria + j.tropas_artilleria) > 0
ORDER BY 
    fuerza_total_combate DESC;
```

Respuesta:
```JSON
[
  {
    "comandante": "DDD",
    "partida_id": 19,
    "pais_seleccionado": "Argentina",
    "total_oro": 80000000,
    "fuerza_total_combate": 314800000
  },
  {
    "comandante": "ADMIN",
    "partida_id": 5,
    "pais_seleccionado": "Albania",
    "total_oro": 0,
    "fuerza_total_combate": 20894
  },
  {
    "comandante": "DDD",
    "partida_id": 22,
    "pais_seleccionado": "Alemania",
    "total_oro": 20000,
    "fuerza_total_combate": 13072
  },
  {
    "comandante": "TESTOP",
    "partida_id": 2,
    "pais_seleccionado": "Albania",
    "total_oro": 6500,
    "fuerza_total_combate": 12651
  },
  {
    "comandante": "ADMIN",
    "partida_id": 4,
    "pais_seleccionado": "Albania",
    "total_oro": 0,
    "fuerza_total_combate": 5701
  },
  {
    "comandante": "BLOPABLITO",
    "partida_id": 8,
    "pais_seleccionado": "Perú",
    "total_oro": 308,
    "fuerza_total_combate": 5464
  },
  {
    "comandante": "CONQUEST>GTAVI",
    "partida_id": 6,
    "pais_seleccionado": "Albania",
    "total_oro": 5000,
    "fuerza_total_combate": 4654
  },
  {
    "comandante": "ADMIN",
    "partida_id": 9,
    "pais_seleccionado": "Perú",
    "total_oro": 30473,
    "fuerza_total_combate": 1459
  },
  {
    "comandante": "DDD",
    "partida_id": 21,
    "pais_seleccionado": "Perú",
    "total_oro": 8000000,
    "fuerza_total_combate": 63
  },
  {
    "comandante": "DDD",
    "partida_id": 23,
    "pais_seleccionado": "Perú",
    "total_oro": 8000000,
    "fuerza_total_combate": 63
  }
]
```
