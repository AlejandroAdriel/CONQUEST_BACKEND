ALTER TABLE infanterias 
    DROP CONSTRAINT IF EXISTS infanterias_tropa_id_fkey,
    ADD CONSTRAINT infanterias_tropa_id_fkey FOREIGN KEY (tropa_id) REFERENCES tropas(tropa_id) ON DELETE CASCADE,
    
    RENAME COLUMN bono_defensa TO bono_defensa_trinchera;

ALTER TABLE infanterias
    ALTER COLUMN bono_defensa_trinchera TYPE NUMERIC(3,1),
    ALTER COLUMN bono_defensa_trinchera SET DEFAULT 0.0,
    ADD CONSTRAINT chk_bono_defensa CHECK (bono_defensa_trinchera >= 0.0);