-- 2026-06-01: Se agrega FK faltante en habilidades
ALTER TABLE habilidades
ADD COLUMN arbol_id INT REFERENCES arbol_habilidades (arbol_id);

-- 2026-06-17: Necesario actualizar todas las habilidades previas por ello se limpiara toda la tabla 
TRUNCATE TABLE habilidades CASCADE;

ALTER TABLE habilidades
    ALTER COLUMN costo SET DEFAULT 0,
    ALTER COLUMN eje_x SET DEFAULT 0,
    ALTER COLUMN eje_y SET DEFAULT 0;

ALTER TABLE habilidades
    ADD CONSTRAINT chk_habilidad_costo_positivo CHECK (costo >= 0);

ALTER TABLE habilidades
    ADD CONSTRAINT chk_categoria_valida CHECK (
        categoria IN ('desarrollo', 'militar', 'especial')
    );

ALTER TABLE habilidades
    ADD CONSTRAINT habilidades_nombre_unique UNIQUE (nombre);