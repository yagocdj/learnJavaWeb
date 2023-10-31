CREATE TABLE Contatos(
	idContato SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	fone VARCHAR(15) NOT NULL,
	email VARCHAR(50)
);

-- Testar se a tabela estah criada
SELECT * FROM Contatos;
