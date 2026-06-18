ALTER TABLE artillerias 
    DROP COLUMN bono_defensa;

ALTER TABLE artillerias 
    RENAME COLUMN bono_ataque TO bono_perforacion_plasma;

ALTER TABLE artillerias 
    ALTER COLUMN bono_perforacion_plasma TYPE NUMERIC(3,1),
    ALTER COLUMN bono_perforacion_plasma SET DEFAULT 0.0;

ALTER TABLE artillerias 
    ADD CONSTRAINT chk_bono_perforacion CHECK (bono_perforacion_plasma >= 0.0);

ALTER TABLE artillerias 
    DROP CONSTRAINT IF EXISTS artillerias_tropa_id_fkey;

ALTER TABLE artillerias 
    ADD CONSTRAINT artillerias_tropa_id_fkey 
    FOREIGN KEY (tropa_id) REFERENCES tropas(tropa_id) ON DELETE CASCADE;