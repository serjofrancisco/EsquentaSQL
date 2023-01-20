SELECT * FROM pessoas 
WHERE idade > 5 AND dias > 3;

-- Query Para selecionar pessoas com idade acima de 5 e estadia de mais de 3 dias

INSERT INTO pessoas(name, idade, hospedagem_id, dias)
VALUES
("Cauê", 27, 1, 11),
("Aline", 30, 5, 12);

-- Query de inserir em dados no banco

UPDATE pessoas SET dias = 10 WHERE dias > 10;

-- Query de UPDATE

DELETE FROM pessoas WHERE id = 4;
DELETE FROM pessoas WHERE name = "Thati";

-- Query de DELETE

SELECT count(name) AS Alines FROM pessoas WHERE name = "Aline";

-- Query de COUNT

SELECT * FROM pessoas WHERE dias > 2 AND dias < 5 ORDER BY dias DESC LIMIT 5;

-- Query Com ORDER BY

SELECT CONCAT(idade, " ",  name) AS xablauNome FROM pessoas;

--Query de concat
SELECT * FROM pessoas WHERE name LIKE "%A%"

--Query com LIKE

SELECT DISTINCT name FROM pessoas LIMIT 5 OFFSET 3

-- Select Com limite e offset




