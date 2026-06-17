# Registro de Índices - Supabase
Este archivo contiene la especificación detallada de cada índice de la base de datos la cual esta subida en Supabase, organizado por tabla, columna y su respectiva sentencia SQL.

---

# 1. Clave Primaria de Usuarios
Tabla: `usuarios`
Columna: `usuario_id`
Nombre del índice: `usuarios_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX usuarios_pkey ON public.usuarios USING btree (usuario_id)
```

# 2. Correo Único de Usuarios
Tabla: `usuarios`
Columna: `correo`
Nombre del índice: `usuarios_correo_key`
Código SQL:
```sql
CREATE UNIQUE INDEX usuarios_correo_key ON public.usuarios USING btree (correo);
```

# 3. Username Único de Usuarios
Tabla: `usuarios`
Columna: `username`
Nombre del índice: `usuarios_username_key`
Código SQL:
```sql
CREATE UNIQUE INDEX usuarios_username_key ON public.usuarios USING btree (username);
```

# 4. Clave Primaria de Jugadores
Tabla: `jugadores`
Columna: `jugador_id`
Nombre del índice: `jugadores_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX jugadores_pkey ON public.jugadores USING btree (jugador_id);
```

# 5. Relación de Sesión Única por Partida
Tabla: `jugadores`
Columna: `usuario_id, partida_id`
Nombre del índice: `unica_relacion_sesion`
Código SQL:
```sql
CREATE UNIQUE INDEX unica_relacion_sesion ON public.jugadores USING btree (usuario_id, partida_id);
```

# 6. Clave Primaria de Partidas
Tabla: `partidas`
Columna: `partida_id`
Nombre del índice: `partidas_pkey`
Código SQL:
```sql
CREATE UNIQUE INDEX partidas_pkey ON public.partidas USING btree (partida_id);
```

# 7. Comandante Único de Partida
Tabla: `partidas`
Columna: `commander_id`
Nombre del índice: `partidas_commander_id_key`
Código SQL:
```sql
CREATE UNIQUE INDEX partidas_commander_id_key ON public.partidas USING btree (commander_id);
```