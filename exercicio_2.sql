create database VendasNot

use VendasNot

CREATE TABLE Fornecedor(
	codFornecedor int PRIMARY KEY, --Este campo sera chave primaria
	RazaoSocial varchar(50),
	CNPJ varchar(14),
	Fone varchar(9)
)

CREATE TABLE Marca(
	codMarca int,
	NomeMarca varchar(30)
)

-- Torna obrigatorio
ALTER TABLE Marca
alter column codMarca int NOT NULL

-- Transforma um campo em uma Primary Key. Necessario ser OBRIGATORIO (NOT NULL)
ALTER TABLE Marca
add PRIMARY KEY (codMarca)


--Seleciona dados especificos tabela
SELECT RazaoSocial, fone
from Fornecedor

-- Inserir dados na tabela
INSERT into Marca
values(200, 'PEPSI')

SELECT * from Fornecedor

insert into Fornecedor
values (1, 'Atacadao', '123456789', '123456789')

-- Cria lista de campos que serao preenchidos
insert into Fornecedor(RazaoSocial, codFornecedor)
values ('Sup. Tonim', 2)

-- Seleciona todas as colunas, melhor evitar
select * from Fornecedor

-- Seleciona colunas escolhidas, melhor opcao
select RazaoSocial, fone from Fornecedor

-- Atualizar dados de uma tabela da forma ERRADA. Isso atualiza TODOS
UPDATE Fornecedor SET fone = '154879654'
WHERE codFornecedor = 2

-- Excluir dados de uma tabela. A tabela ainda existe, mas os dados nao
DELETE Fornecedor
where codFornecedor > 50 AND Cidade = 'Franca' --Pode combinar. AND, OR e NOT