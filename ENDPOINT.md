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