-- Comando para criar novo BD
create database Aula1

-- Passa a trabalhar no DB selecionado
use Aula1

-- Cria nova tabela
CREATE TABLE Filme(
	codigo int,
	titulo_original char(40) not null,
	ator_principal varchar(70),
	previsao_estreia datetime,
)

-- Exclui Tabela
DROP TABLE Filme

-- Altera  tabela para criar campos novos
ALTER TABLE Filme
ADD classificacao int

ALTER TABLE Filme
ADD custo_total int

-- Altera tabela para excluir campo
ALTER TABLE Filme
drop column ator_principal

-- Altera tipo do campo na tabela
-- Tipo Money é exclusivo do SQL Server. Da pra usar decimal ou float.
ALTER TABLE Filme
alter column custo_total money

-- Acrescenta a caracterestica 'not null', ou seja, é obrigatorio. 
-- Nao é permitido que o campo fique vazio
ALTER TABLE Filme
alter column custo_total money not null

-- Seleciona tabela
select * from Filme