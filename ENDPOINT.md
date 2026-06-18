# Registro de ENDPOINTS - Supabase
Este archivo contiene los endpoints que se encuentran en Supabase, se muestra el metodo, el link del endpoint y la respuesta a la llamada.
---


# 1. Artillerías

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/artillerias`

Respuesta:
```JSON
[
  {
    "tropa_id": 5,
    "bono_perforacion_plasma": 4.5
  },
  {
    "tropa_id": 6,
    "bono_perforacion_plasma": 6.0
  },
  {
    "tropa_id": 13,
    "bono_perforacion_plasma": 5.0
  },
  {
    "tropa_id": 14,
    "bono_perforacion_plasma": 3.8
  },
  {
    "tropa_id": 15,
    "bono_perforacion_plasma": 7.5
  }
]
```
# 2. Caballerias

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/caballerias`

Respuesta:
```JSON
[
  {
    "tropa_id": 3,
    "bono_ataque_flanqueo": 2.5
  },
  {
    "tropa_id": 4,
    "bono_ataque_flanqueo": 3.5
  },
  {
    "tropa_id": 10,
    "bono_ataque_flanqueo": 2.0
  },
  {
    "tropa_id": 11,
    "bono_ataque_flanqueo": 4.0
  },
  {
    "tropa_id": 12,
    "bono_ataque_flanqueo": 1.8
  }
]
```

# 3. Continentes

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/continentes`

Respuesta:
```JSON
[
  {
    "continente_id": 1,
    "mapa_id": 1,
    "nombre_continente": "América del Norte y Central"
  },
  {
    "continente_id": 2,
    "mapa_id": 1,
    "nombre_continente": "América del Sur"
  },
  {
    "continente_id": 3,
    "mapa_id": 1,
    "nombre_continente": "Europa"
  },
  {
    "continente_id": 4,
    "mapa_id": 1,
    "nombre_continente": "Asia"
  },
  {
    "continente_id": 5,
    "mapa_id": 1,
    "nombre_continente": "África"
  },
  {
    "continente_id": 6,
    "mapa_id": 1,
    "nombre_continente": "Oceanía"
  }
]

```
# 4. Partidas

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/partidas`

Respuesta:
```JSON
[
  {
    "partida_id": 1,
    "commander_id": "SECURE-NODE-440",
    "estado_activo": true,
    "dias_campana": 1,
    "porcentaje_dominio": 0.00,
    "fecha_creacion": "2026-06-12T16:31:03.737148+00:00",
    "ultima_vez_guardado": "2026-06-12T16:31:03.737148+00:00"
  },
  {
    "partida_id": 2,
    "commander_id": "SECURE-NODE-292",
    "estado_activo": true,
    "dias_campana": 1,
    "porcentaje_dominio": 2.10,
    "fecha_creacion": "2026-06-12T16:35:26.143423+00:00",
    "ultima_vez_guardado": "2026-06-12T16:35:22.01+00:00"
  },
  {
    "partida_id": 4,
    "commander_id": "SECURE-NODE-617",
    "estado_activo": true,
    "dias_campana": 754,
    "porcentaje_dominio": 2.10,
    "fecha_creacion": "2026-06-14T02:21:37.841822+00:00",
    "ultima_vez_guardado": "2026-06-14T02:21:33.926+00:00"
  },
  {
    "partida_id": 5,
    "commander_id": "SECURE-NODE-935",
    "estado_activo": true,
    "dias_campana": 1101,
    "porcentaje_dominio": 2.10,
    "fecha_creacion": "2026-06-14T02:21:39.003826+00:00",
    "ultima_vez_guardado": "2026-06-14T02:23:40.862+00:00"
  }
]
```
# 5. Tiempos

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/tiempos`

Respuesta:
```JSON
[
  {
    "tiempo_id": 1,
    "partida_id": 2,
    "dias_campana": 1,
    "velocidad": 1,
    "pausado": true
  },
  {
    "tiempo_id": 3,
    "partida_id": 4,
    "dias_campana": 754,
    "velocidad": 3,
    "pausado": true
  },
  {
    "tiempo_id": 4,
    "partida_id": 5,
    "dias_campana": 1101,
    "velocidad": 3,
    "pausado": true
  }
]
```

# 6. Tropas

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/tropas`

Respuesta:
```JSON
[
  {
    "tropa_id": 1,
    "nombre_tropa": "Cibersoldado de Asalto",
    "costo_base": 15,
    "multiplicador_combate": 1.0
  },
  {
    "tropa_id": 2,
    "nombre_tropa": "Guardia de Neo-Tokio",
    "costo_base": 25,
    "multiplicador_combate": 1.2
  },
  {
    "tropa_id": 3,
    "nombre_tropa": "Motorista de Asalto Cyber",
    "costo_base": 45,
    "multiplicador_combate": 1.5
  },
  {
    "tropa_id": 4,
    "nombre_tropa": "Nómada del Desierto",
    "costo_base": 60,
    "multiplicador_combate": 1.8
  },
  {
    "tropa_id": 5,
    "nombre_tropa": "Cañón de Plasma Pesado",
    "costo_base": 120,
    "multiplicador_combate": 3.0
  },
  {
    "tropa_id": 6,
    "nombre_tropa": "Meca de Asedio Goliath",
    "costo_base": 250,
    "multiplicador_combate": 4.0
  },
  {
    "tropa_id": 7,
    "nombre_tropa": "Recluta con Escudo",
    "costo_base": 10,
    "multiplicador_combate": 0.9
  },
  {
    "tropa_id": 8,
    "nombre_tropa": "Espía Holográfico",
    "costo_base": 35,
    "multiplicador_combate": 1.1
  },
  {
    "tropa_id": 9,
    "nombre_tropa": "Exo-Soldado Pesado",
    "costo_base": 50,
    "multiplicador_combate": 1.6
  },
  {
    "tropa_id": 10,
    "nombre_tropa": "Cazador en Monorrueda",
    "costo_base": 55,
    "multiplicador_combate": 1.4
  },
  {
    "tropa_id": 11,
    "nombre_tropa": "Jinete de Neodraco",
    "costo_base": 90,
    "multiplicador_combate": 2.2
  },
  {
    "tropa_id": 12,
    "nombre_tropa": "Flanqueador Veloz",
    "costo_base": 40,
    "multiplicador_combate": 1.3
  },
  {
    "tropa_id": 13,
    "nombre_tropa": "Lanzamisiles Enjambre",
    "costo_base": 150,
    "multiplicador_combate": 3.2
  },
  {
    "tropa_id": 14,
    "nombre_tropa": "Mortero de Pulso EMP",
    "costo_base": 110,
    "multiplicador_combate": 2.5
  },
  {
    "tropa_id": 15,
    "nombre_tropa": "Batería de Riel Magnético",
    "costo_base": 300,
    "multiplicador_combate": 5.0
  }
]
```
# 7. Usuarios

Método: `GET`
Endpoint: `https://ivwglvdocjgwinzrqooc.supabase.co/rest/v1/usuarios`

Respuesta:
```JSON
[
  {
    "usuario_id": 1,
    "username": "TESTOP",
    "correo": "test@conquest.com",
    "nombre": "Test Operario",
    "pais": "México",
    "password_hash": "SUPABASE_AUTH",
    "rango": "OPERARIO NOVATO",
    "fecha_registro": "2026-06-12T14:30:29.617297+00:00"
  },
  {
    "usuario_id": 5,
    "username": "ADMIN",
    "correo": "admin@admin.com",
    "nombre": "admin",
    "pais": "viltrum",
    "password_hash": "SUPABASE_AUTH",
    "rango": "OPERARIO NOVATO",
    "fecha_registro": "2026-06-12T17:04:18.179737+00:00"
  },
  {
    "usuario_id": 6,
    "username": "BLOPABLITO",
    "correo": "pablo.infantes@ucsp.edu.pe",
    "nombre": "Pablo Infantes",
    "pais": "Perú",
    "password_hash": "SUPABASE_AUTH",
    "rango": "OPERARIO NOVATO",
    "fecha_registro": "2026-06-14T03:18:38.179537+00:00"
  },
  {
    "usuario_id": 7,
    "username": "TUPAPA",
    "correo": "viltrumita@renacido.com",
    "nombre": "invencible",
    "pais": "casajistan",
    "password_hash": "SUPABASE_AUTH",
    "rango": "OPERARIO NOVATO",
    "fecha_registro": "2026-06-14T03:18:52.080342+00:00"
  },
  {
    "usuario_id": 8,
    "username": "CONQUEST>GTAVI",
    "correo": "jhoao.pereyra@ucsp.edu.pe",
    "nombre": "Jhoao Paulo Pereyra Echave",
    "pais": "Haití",
    "password_hash": "SUPABASE_AUTH",
    "rango": "OPERARIO NOVATO",
    "fecha_registro": "2026-06-14T03:19:22.535894+00:00"
  }
]
```