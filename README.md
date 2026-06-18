# CONQUEST - Base de Datos y Lógica Relacional

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white)](https://supabase.com/)

Este repositorio contiene la definición del esquema de base de datos PostgreSQL, datos de inicialización y procedimientos almacenados para la simulación geopolítica global CONQUEST.

---

## Tecnologías Utilizadas

- **Base de Datos:** PostgreSQL para el almacenamiento relacional de campañas, perfiles, países y catálogo de unidades.
- **Hosting y API Serverless:** Supabase como proveedor de base de datos en la nube y gestión de autenticación.

---

## Arquitectura y Uso del Backend

La base de datos está diseñada con un enfoque relacional híbrido. Se utiliza directamente como backend serverless a través de Supabase.

## Listado de Tablas Clave y Utilidad

### Gestión de Partidas y Usuarios

- **`usuarios`**: Registra las credenciales de operario, username, correo, contraseña y rango.
- **`partidas`**: Guarda las sesiones de juego activas con el total de días transcurridos y el porcentaje de dominio global.
- **`jugadores`**: Vincula un operario a una campaña activa, almacenando el HQ seleccionado (`hq_pais_id`), el presupuesto (`oro`), los puntos de habilidad y las reservas de tropas (`tropas_infanteria`, `tropas_caballeria`, `tropas_artilleria`).

### Geopolítica y Planisferio

- **`mapas` / `continentes`**: Definiciones estructurales de la geografía global.
- **`paises_base`**: Estadísticas de población real de la Tierra, GDP per capita, tasas diarias de natalidad/mortalidad, multiplicadores de reclutamiento y composiciones militares de la IA.

### Árbol de Tecnología y Habilidades

- **`habilidades`**: Catálogo de las 37 patentes de investigación militar y civil.
- **`habilidad_prerrequisitos`**: Mapea las dependencias jerárquicas de habilitación de nodos.
- **`partida_habilidades`**: Registra las habilidades investigadas y desbloqueadas para cada campaña activa.
- **`arbol_habilidades`**: Clasifica las distintas ramas de especialización del árbol tecnológico.

### Ejércitos y Categorías Relacionales

- **`tropas`**: Catálogo general de las 15 unidades de combate con su coste financiero base y multiplicadores de poder bélico.
- **`infanterias` / `caballerias` / `artillerias`**: Tablas relacionales hijas que extienden las habilidades únicas de cada subtipo.

### Control de Tiempo

- **`tiempos`**: Registra la velocidad y si el juego se encuentra pausado para cada partida.

---

## Interfaz Frontend

Para interactuar con esta base de datos a través de la interfaz de mando holográfica CRT, consulta el código del frontend en:
[CONQUEST_FRONTEND (React + Vite + Tailwind)](file:///d:/CONQUEST/CONQUEST_FRONTEND/README.md)

---

## Desarrolladores

- Pablo Infantes Soto ([blopablito](https://github.com/blopablito))
- Jhoao Pereyra ([jppaulo1](https://github.com/jppaulo1))
- Alejandro Adriel Quispe Montes ([AlejandroAdriel](https://github.com/AlejandroAdriel))
- Francisco Cucho ([francisko41](https://github.com/francisko41))
