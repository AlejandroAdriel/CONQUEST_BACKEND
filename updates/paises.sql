ALTER TABLE paises_base
    ALTER COLUMN poblacion_real_tierra TYPE BIGINT;

ALTER TABLE paises_base
    ALTER COLUMN pct_composicion_infanteria SET DEFAULT 0.0,
    ALTER COLUMN pct_composicion_caballeria SET DEFAULT 0.0,
    ALTER COLUMN pct_composicion_artilleria SET DEFAULT 0.0;
.
ALTER TABLE paises_base
    ADD CONSTRAINT chk_tasas_positivas CHECK (
        tasa_natalidad_diaria >= 0 AND 
        tasa_mortalidad_diaria >= 0
    );

ALTER TABLE paises_base
    DROP CONSTRAINT IF EXISTS paises_base_continente_id_fkey;

ALTER TABLE paises_base
    ADD CONSTRAINT paises_base_continente_id_fkey 
    FOREIGN KEY (continente_id) REFERENCES continentes(continente_id) ON DELETE SET NULL;