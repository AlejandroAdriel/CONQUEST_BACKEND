

--Marcar países con poca economía como conquistados
UPDATE paises
SET conquistado = TRUE
WHERE economia < 4;
