# Registro de Índices - Supabase
Este archivo contiene la especificación detallada de cada índice de la base de datos la cual esta subida en Supabase, organizado por tabla, columna y su respectiva sentencia SQL.
---
# Medicion del tiempo antes de los indices

Seq Scan on usuarios  `(cost=0.00..10.50 rows=1 width=1616) (actual time=0.097..0.098 rows=1 loops=1)`
  Filter: ((correo)::text = 'admin@admin.com'::text)
  Rows Removed by Filter: 5
Planning Time: `0.433 ms`
Execution Time: `0.163 ms`

---

# 1. Clave Primaria de Usuarios
Tabla: `usuarios`
Columna: `usuario_id`
Nombre del índice: `usuarios_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX usuarios_pkey ON public.usuarios USING btree (usuario_id)
```

```sql
EXPLAIN ANALYZE SELECT * FROM usuarios WHERE usuario_id = 1;
```

Index Scan using usuarios_pkey on usuarios  `(cost=0.14..2.36 rows=1 width=1616) (actual time=0.017..0.018 rows=1 loops=1)`
  Index Cond: `(usuario_id = 1)`
Planning Time: `0.411 ms`
Execution Time: `0.084 ms`

# 2. Correo Único de Usuarios - Más rersultado de tiempos
Tabla: `usuarios`
Columna: `correo`
Nombre del índice: `usuarios_correo_key`
Código SQL:
```sql
CREATE UNIQUE INDEX usuarios_correo_key ON public.usuarios USING btree (correo);
```

```sql
EXPLAIN ANALYZE SELECT * FROM usuarios WHERE correo = 'admin@admin.com';
```

Index Scan using usuarios_correo_key on usuarios  `(cost=0.14..2.36 rows=1 width=1616) (actual time=0.035..0.035 rows=1 loops=1)`
  Index Cond: ((correo)::text = 'admin@admin.com'::text)
Planning Time: `1.165 ms`
Execution Time: `0.119 ms`

# 3. Username Único de Usuarios
Tabla: `usuarios`
Columna: `username`
Nombre del índice: `usuarios_username_key`
Código SQL:
```sql
CREATE UNIQUE INDEX usuarios_username_key ON public.usuarios USING btree (username);
```

```sql
EXPLAIN ANALYZE SELECT * FROM usuarios WHERE username = 'ADMIN';
```

Index Scan using usuarios_username_key on usuarios  `(cost=0.14..2.36 rows=1 width=1616) (actual time=0.058..0.059 rows=1 loops=1)`
  Index Cond: `((username)::text = 'ADMIN'::text)`
Planning Time: `0.518 ms`
Execution Time: `0.131 ms`

# 4. Clave Primaria de Jugadores
Tabla: `jugadores`
Columna: `jugador_id`
Nombre del índice: `jugadores_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX jugadores_pkey ON public.jugadores USING btree (jugador_id);
```

```sql
EXPLAIN ANALYZE SELECT * FROM jugadores WHERE jugador_id = 2;
```

Index Scan using jugadores_pkey on jugadores  `(cost=0.15..2.37 rows=1 width=250) (actual time=0.026..0.027 rows=1 loops=1)`
  Index Cond: `(jugador_id = 2)`
Planning Time: `0.420 ms`
Execution Time: `0.088 ms`

# 5. Relación de Sesión Única por Partida
Tabla: `jugadores`
Columna: `usuario_id, partida_id`
Nombre del índice: `unica_relacion_sesion`
Código SQL:
```sql
CREATE UNIQUE INDEX unica_relacion_sesion ON public.jugadores USING btree (usuario_id, partida_id);
```

```sql
EXPLAIN ANALYZE SELECT * FROM jugadores WHERE usuario_id = 1 AND partida_id = 2;;
```

Index Scan using unica_relacion_sesion on jugadores  `(cost=0.15..2.37 rows=1 width=250) (actual time=0.069..0.069 rows=1 loops=1)`
  Index Cond: `((usuario_id = 1) AND (partida_id = 2))`
Planning Time: `0.424 ms`
Execution Time: `0.137 ms`

# 6. Clave Primaria de Partidas
Tabla: `partidas`
Columna: `partida_id`
Nombre del índice: `partidas_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX partidas_pkey ON public.partidas USING btree (partida_id);
```

```sql
EXPLAIN ANALYZE SELECT * FROM partidas WHERE partida_id = 1;
```

Index Scan using partidas_pkey on partidas  `(cost=0.15..2.37 rows=1 width=255) (actual time=0.023..0.023 rows=1 loops=1)`
  Index Cond: `(partida_id = 1)`
Planning Time: `0.447 ms`
Execution Time: `0.090 ms`


# 7. Comandante Único de Partida
Tabla: `partidas`
Columna: `commander_id`
Nombre del índice: `partidas_commander_id_key`
Código SQL:
```sql
CREATE UNIQUE INDEX partidas_commander_id_key ON public.partidas USING btree (commander_id);
```

```sql
EXPLAIN ANALYZE SELECT * FROM partidas WHERE commander_id = 'SECURE-NODE-440';
```

Index Scan using partidas_commander_id_key on partidas  `(cost=0.15..2.37 rows=1 width=255) (actual time=0.089..0.090 rows=1 loops=1)`
  Index Cond: `((commander_id)::text = 'SECURE-NODE-440'::text)`
Planning Time: `0.322 ms`
Execution Time: `0.174 ms`

# 8. Clave Primaria de Tropas
Tabla: `tropas`
Columna: `tropa_id`
Nombre del índice: `tropas_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX tropas_pkey ON public.tropas USING btree (tropa_id);
```

```sql
EXPLAIN ANALYZE SELECT * FROM tropas WHERE tropa_id = 1;
```

Index Scan using tropas_pkey on tropas  `(cost=0.15..2.37 rows=1 width=138) (actual time=0.079..0.079 rows=1 loops=1)`
  Index Cond: `(tropa_id = 1)`
Planning Time: `1.137 ms`
Execution Time: `0.159 ms`

# 9. Nombre Único de Tropa
Tabla: `tropas`
Columna: `nombre_tropa`
Nombre del índice: `tropas_nombre_tropa_key`
Código SQL:
```sql
CREATE UNIQUE INDEX tropas_nombre_tropa_key ON public.tropas USING btree (nombre_tropa);
```

```sql
EXPLAIN ANALYZE SELECT * FROM tropas WHERE nombre_tropa = 'Cibersoldado de Asalto';
```

Index Scan using tropas_nombre_tropa_key on tropas  `(cost=0.15..2.37 rows=1 width=138) (actual time=0.033..0.034 rows=1 loops=1)`
  Index Cond: `((nombre_tropa)::text = 'Cibersoldado de Asalto'::text)`
Planning Time: `0.417 ms`
Execution Time: `0.138 ms`

# 10. Clave Primaria de Infanterías
Tabla: `infanterías`
Columna: `tropa_id`
Nombre del índice: `infanterias_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX infanterias_pkey ON public.infanterias USING btree (tropa_id);
```

```sql
EXPLAIN ANALYZE SELECT * FROM infanterias WHERE tropa_id = 1;
```

Index Scan using infanterias_pkey on infanterias  `(cost=0.15..2.37 rows=1 width=16) (actual time=0.057..0.058 rows=1 loops=1)`
  Index Cond: `(tropa_id = 1)`
Planning Time: `0.343 ms`
Execution Time: `0.127 ms`

# 11. Clave Primaria de Caballerías
Tabla: `caballerias`
Columna: `tropa_id`
Nombre del índice: `caballerias_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX caballerias_pkey ON public.caballerias USING btree (tropa_id);
```

# 12. Clave Primaria de Artillerías
Tabla: `artillerias`
Columna: `tropa_id`
Nombre del índice: `artillerias_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX artillerias_pkey ON public.artillerias USING btree (tropa_id);
```

# 13. Clave Primaria del Árbol de Habilidades
Tabla: `arbol_habilidades`
Columna: `arbol_id`
Nombre del índice: `arbol_habilidades_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX arbol_habilidades_pkey ON public.arbol_habilidades USING btree (arbol_id);
```

# 14. Nombre Único del Árbol de Habilidades
Tabla: `arbol_habilidades`
Columna: `nombre_arbol`
Nombre del índice: `arbol_habilidades_nombre_arbol_key`
Código SQL:
```sql
CREATE UNIQUE INDEX arbol_habilidades_nombre_arbol_key ON public.arbol_habilidades USING btree (nombre_arbol);
```

# 15. Clave Primaria de Habilidades
Tabla: `habilidades`
Columna: `habilidad_id`
Nombre del índice: `habilidades_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX habilidades_pkey ON public.habilidades USING btree (habilidad_id);
```

# 16. Prerrequisitos de Habilidades (Compuesta)
Tabla: `habilidad_prerrequisitos`
Columna: `habilidad_id, habilidad_requerida_id`
Nombre del índice: `habilidad_prerrequisitos_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX habilidad_prerrequisitos_pkey ON public.habilidad_prerrequisitos USING btree (habilidad_id, habilidad_requerida_id);
```

# 17. Habilidades por Partida (Compuesta)
Tabla: `partida_habilidades`
Columna: `partida_id, habilidad_id`
Nombre del índice: `partida_habilidades_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX partida_habilidades_pkey ON public.partida_habilidades USING btree (partida_id, habilidad_id);
```

# 18. Clave Primaria de Mapas
Tabla: `mapas`
Columna: `mapa_id`
Nombre del índice: `mapas_pkey`
Código SQL:

SQL
CREATE UNIQUE INDEX mapas_pkey ON public.mapas USING btree (mapa_id);

# 19. Clave Primaria de Continentes
Tabla: `continentes`
Columna: `continente_id`
Nombre del índice: `continentes_pkey`

Código SQL:
```sql
CREATE UNIQUE INDEX continentes_pkey ON public.continentes USING btree (continente_id);
```

# 20. Clave Primaria de Países Base
Tabla: `paises_base`
Columna: `pais_id`
Nombre del índice: `paises_base_pkey`

Código SQL:
```sql
CREATE UNIQUE INDEX paises_base_pkey ON public.paises_base USING btree (pais_id);
```

# 21. Clave Primaria de Tiempos
Tabla: `tiempos`
Columna: `tiempo_id`
Nombre del índice: `tiempos_pkey`

Código SQL:
```sql
CREATE UNIQUE INDEX tiempos_pkey ON public.tiempos USING btree (tiempo_id);
```