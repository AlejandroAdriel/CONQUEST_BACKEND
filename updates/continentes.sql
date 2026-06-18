
ALTER TABLE continentes 
DROP COLUMN nro_paises;

ALTER TABLE continentes 
ADD COLUMN nombre_continente VARCHAR(100) NOT NULL;

ALTER TABLE continentes 
DROP CONSTRAINT IF EXISTS continentes_mapa_id_fkey;

ALTER TABLE continentes 
ADD CONSTRAINT continentes_mapa_id_fkey 
FOREIGN KEY (mapa_id) REFERENCES mapas (mapa_id) ON DELETE CASCADE;
