use Aula1

CREATE TABLE Funcionario(
	Matricula int,
	Nome varchar(70),
	DtNasc date,
	Nacionalidade varchar(20),
	Sexo varchar(9),
	Est_Civil varchar(8), 
	RG varchar(9),
	CPF varchar (11),
	Endereco varchar (100),
	DtAdmissao date
)

CREATE TABLE Fone(
	Matricula int,
	NroFone varchar(9)
)

CREATE TABLE FuncionarioCargo(
	Matricula int,
	CodCargo int,
	DtInicio date,
	DtFim date
)

CREATE TABLE FuncionarioDependente(
	Matricula int,
	CodDep int
)

CREATE TABLE Dependente(
	CodDep int,
	Nome varchar (70),
	DtNasc date
)

CREATE TABLE Cargo(
	CodCargo int,
	Descricao varchar(300)
)

---------------------------------------------------

--1)
ALTER TABLE Funcionario
add salario money

--2)
ALTER TABLE Dependente
drop column DtNasc

--3)
ALTER TABLE Funcionario
alter column RG varchar(50)

--4)
ALTER TABLE Funcionario
add LocalNasc varchar(50)

--5)
ALTER TABLE Funcionario
drop column salario

--6)
ALTER TABLE Dependente
add DtNascDependente datetime

ALTER TABLE Funcionario
add NomeMae varchar(70)

--7)
ALTER TABLE Funcionario
add DDD int

--8)
ALTER TABLE Funcionario
add Rua int, Nro int, Bairro varchar(30)

ALTER TABLE Funcionario
drop column Endereco