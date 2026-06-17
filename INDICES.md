# Registro de Índices - Supabase
Este archivo contiene la especificación detallada de cada índice de la base de datos la cual esta subida en Supabase, organizado por tabla, columna y su respectiva sentencia SQL.

---

# 1. Clave Primaria de Usuarios
Tabla: `usuarios`
Columna: `usuario_id`
Nombre del índice: `usuarios_pkey`
Código SQL:
CREATE UNIQUE INDEX usuarios_pkey ON public.usuarios USING btree (usuario_id);
