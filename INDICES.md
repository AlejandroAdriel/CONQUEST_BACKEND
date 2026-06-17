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