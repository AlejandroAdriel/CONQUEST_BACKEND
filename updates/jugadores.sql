-- 2026-06-01: Se corrige tabla jugadores
ALTER TABLE jugadores
DROP CONSTRAINT IF EXISTS jugadores_usuario_id_fkey,
DROP CONSTRAINT IF EXISTS jugadores_partida_id_fkey,
DROP CONSTRAINT IF EXISTS jugadores_usuario_id_partida_id_key,
ALTER COLUMN oro
DROP DEFAULT,
ADD COLUMN hq_pais_id VARCHAR(100) NOT NULL,
ADD COLUMN tropas_infanteria INT DEFAULT 5000 NOT NULL,
ADD COLUMN tropas_caballeria INT DEFAULT 2000 NOT NULL,
ADD COLUMN tropas_artilleria INT DEFAULT 500 NOT NULL,
ADD CONSTRAINT jugadores_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id) ON DELETE CASCADE,
ADD CONSTRAINT jugadores_partida_id_fkey FOREIGN KEY (partida_id) REFERENCES partidas (partida_id) ON DELETE CASCADE,
ADD CONSTRAINT unica_relacion_sesion UNIQUE (usuario_id, partida_id);