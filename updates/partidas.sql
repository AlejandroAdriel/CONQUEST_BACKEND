-- 2026-06-01: Se corrige tabla partidas
ALTER TABLE partidas
DROP COLUMN cuartel_general,
DROP COLUMN tiempo_jugado,
ALTER COLUMN dias_campana
SET DEFAULT 1,
ALTER COLUMN dias_campana
SET
    NOT NULL,
ALTER COLUMN porcentaje_dominio TYPE NUMERIC(5, 2),
ALTER COLUMN porcentaje_dominio
SET
    NOT NULL,
ALTER COLUMN fecha_creacion TYPE TIMESTAMP
WITH
    TIME ZONE,
ALTER COLUMN ultima_vez_guardado TYPE TIMESTAMP
WITH
    TIME ZONE,
ADD COLUMN commander_id VARCHAR(100) NOT NULL UNIQUE;

ALTER TABLE partidas
RENAME COLUMN estado TO estado_activo;
