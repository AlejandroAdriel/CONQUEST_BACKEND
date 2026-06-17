-- 2026-06-01: Se corrige tabla usuarios
ALTER TABLE usuarios
RENAME COLUMN contrasena TO password_hash;

ALTER TABLE usuarios
RENAME COLUMN creado TO fecha_registro;

ALTER TABLE usuarios
ALTER COLUMN pais TYPE VARCHAR(50),
ALTER COLUMN pais
SET
    NOT NULL,
ALTER COLUMN rango
SET
    NOT NULL,
ALTER COLUMN fecha_registro TYPE TIMESTAMP
WITH
    TIME ZONE,
ALTER COLUMN fecha_registro
SET
    NOT NULL;