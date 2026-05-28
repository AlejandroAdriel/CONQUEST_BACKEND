--Aumentar habilidad a jugadores
UPDATE jugadores
SET habilidad = habilidad + 3
WHERE ejercito > 2000;

--Marcar países con poca economía como conquistados
UPDATE paises
SET conquistado = TRUE
WHERE economia < 4;
