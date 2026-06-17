-- 2026-06-01: Se corrige tabla partida_habilidades
ALTER TABLE partida_habilidades
DROP CONSTRAINT IF EXISTS partida_habilidades_habilidad_id_fkey,
DROP CONSTRAINT IF EXISTS partida_habilidades_pkey,
DROP COLUMN progreso_id,
DROP COLUMN desbloqueada,
DROP COLUMN en_desarrollo,
ALTER COLUMN habilidad_id TYPE VARCHAR(50),
ADD COLUMN fecha_desbloqueo TIMESTAMP
WITH
    TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    ADD PRIMARY KEY (partida_id, habilidad_id),
    ADD CONSTRAINT partida_habilidades_habilidad_id_fkey FOREIGN KEY (habilidad_id) REFERENCES habilidades (habilidad_id) ON DELETE CASCADE,
    ADD CONSTRAINT partida_habilidades_partida_id_fkey FOREIGN KEY (partida_id) REFERENCES partidas (partida_id) ON DELETE CASCADE;