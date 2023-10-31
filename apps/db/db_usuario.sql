-- DDL - criar uma tabela com uma constraint

CREATE TABLE Usuario (
	idUsuario SERIAL NOT NULL,
	nome VARCHAR(50) NOT NULL,
	dataNascimento DATE NOT NULL,
	qtdDeFilhos INTEGER DEFAULT 0,
	CONSTRAINT pk_usuario PRIMARY KEY(idUsuario)
);

-- Verificar se a tabela foi criada
SELECT * FROM Usuario;

-- Realizar algumas insercoes
INSERT INTO Usuario VALUES(DEFAULT ,'Luana Nunes', '15-11-1990', 1);
INSERT INTO Usuario VALUES(DEFAULT, 'Carlos Silva', '01-05-2001', DEFAULT);
INSERT INTO Usuario VALUES(DEFAULT, 'Anna Moura', '20-01-2002', DEFAULT);
INSERT INTO Usuario VALUES(DEFAULT, 'Daniel Costa', '30-09-1985', 2);
INSERT INTO Usuario VALUES(DEFAULT, 'Manuela Ferraz', '09-10-1989', 1);
INSERT INTO Usuario VALUES(DEFAULT, 'Marcos Lima', '24-06-2000', 1);
INSERT INTO Usuario VALUES(DEFAULT, 'Maria Chaves', '10-12-1965', 5);
INSERT INTO Usuario VALUES(DEFAULT, 'Savio Tavarez', '05-07-1999', DEFAULT);
INSERT INTO Usuario VALUES(DEFAULT, 'Lizandra Gomes', '13-02-2001', DEFAULT);
INSERT INTO Usuario VALUES(DEFAULT, 'Kleber Bueno', '19-04-1982', 1);
INSERT INTO Usuario VALUES(DEFAULT, 'Livia Martins', '11-01-1979', 2);

-- Verificar se as insercoes foram bem sucedidas

SELECT * FROM Usuario;

-- Elaborar algumas consultas variadas

-- Exibir os usuarios com nomes que comecam com a letra 'L'.
SELECT nome
FROM Usuario
WHERE nome LIKE 'L%';

-- Exibir os dois ultimos registros da tabela 'Usuario'.
SELECT idUsuario, nome, dataNascimento FROM (
	SELECT idUsuario, nome, dataNascimento
	FROM Usuario
	ORDER BY idUsuario DESC
	LIMIT 2
) subQuery
ORDER BY idUsuario ASC;

-- Exibir os usuarios que possuem mais de um filho agrupados pela quantidade de filhos em ordem crescente.
SELECT u.qtdDeFilhos, u.nome
FROM Usuario u
GROUP BY u.qtdDeFilhos, u.nome
HAVING u.qtdDeFilhos > 1
ORDER BY u.qtdDeFilhos;

-- Mostrar os usuarios ID 5 e ID 6.
SELECT idUsuario, nome
FROM Usuario
OFFSET 4 LIMIT 2;
