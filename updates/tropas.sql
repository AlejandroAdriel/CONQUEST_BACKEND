ALTER TABLE tropas
    RENAME COLUMN nombre_tropa TO nombre;

ALTER TABLE tropas
    ALTER COLUMN costo_base SET DEFAULT 10,
    ALTER COLUMN multiplicador_combate TYPE NUMERIC(4,2),
    ALTER COLUMN multiplicador_combate SET DEFAULT 1.00;

ALTER TABLE tropas
    ADD CONSTRAINT chk_costo_base_positivo CHECK (costo_base > 0);

ALTER TABLE tropas
    ADD CONSTRAINT tropas_nombre_unique UNIQUE (nombre);