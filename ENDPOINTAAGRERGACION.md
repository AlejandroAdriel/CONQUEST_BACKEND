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