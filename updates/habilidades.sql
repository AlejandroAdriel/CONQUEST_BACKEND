-- 2026-06-01: Se agrega FK faltante en habilidades
ALTER TABLE habilidades
ADD COLUMN arbol_id INT REFERENCES arbol_habilidades (arbol_id);

-- 2026-06-17: Necesario actualizar todas las habilidades previas por ello se limpiara toda la tabla 
TRUNCATE TABLE habilidades CASCADE;