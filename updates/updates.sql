-- 2026-06-01: Se agrega FK faltante en habilidades
ALTER TABLE habilidades ADD COLUMN arbol_id INT REFERENCES arbol_habilidades(arbol_id);
