create database Escola

use Escola

create table Curso(
	codCur int primary key,
	NomeCurso varchar(50),
	Nro_vagas int,
	codDep int
)

create table Departamento(
	codDep int primary key,
	depto varchar(50),
	codPes int
)

create table Pessoa(
	codPes int primary key,
	NomePes varchar(50)
)

create table Escreve(
	codPes int,
	codLivro int
)

create table Livro(
	codLivro int primary key,
	titulo varchar(50)
)

create table Bibliografia(
	codLivro int primary key,
	codDis int
)

create table Disciplina(
	codDis int primary key,
	NomeDis varchar(50),
	codCur int
)

------------------------------------

--5 Pessoas

SELECT * from Pessoa

insert into Pessoa
values (1, 'Ricardo Ricardes'),
	   (2, 'Rodrigo Rodrigues'), 
	   (3, 'Fernando Fernandes'),
	   (4, 'Maria Marias'),
	   (5, 'Amanda Amandas')

--5 Departamentos

SELECT * from Departamento

insert into Departamento
values (1, 'Ciência', null),
	   (2, 'Tecnologia', null),
	   (3, 'Marketing', null),
	   (4, 'Vendas', null),
	   (5, 'RH', null)

--5 Livros

select * from Livro

insert into Livro
values (1, 'Tanaka Potter e a Não-Aula Filosofal'),
	   (2, 'Tanaka Potter e o Caso de Uso Secreto'),
	   (3, 'Tanaka Potter e o Pressman de Azkaban'),
	   (4, 'Tanaka Potter e a Pintura Rupestre de Fogo'),
	   (5, 'Tanaka Potter e a Ordem do LucidChart')

--5 Cursos

select * from Curso

insert into Curso (codCur, NomeCurso, Nro_vagas)
values (1, 'Engenharia de Software', 0),
	   (2, 'Administração', 100),
	   (3, 'Engenharia Eletrônica', 45),
	   (4, 'Cálculo', 30),
	   (5, 'Design Gráfico', 60)

--5 Disciplinas

select * from Disciplina

insert into Disciplina (codDis, NomeDis)
values (1, 'Diagramas'),
	   (2, 'Matemática Discreta'),
	   (3, 'Eletronica'),
	   (4, 'Cálculo II'),
	   (5, 'Design de Interface')

---------------------------------------------------

--1)
update Departamento set depto = 'Marketing'
where codDep = 1

--2)
update Pessoa set NomePes = 'Ana'
where codPes = 1

update Pessoa set NomePes = 'Eva'
where codPes = 2

update Pessoa set NomePes = 'Ivo'
where codPes = 3

update Pessoa set NomePes = 'Oto'
where codPes = 4

update Pessoa set NomePes = 'Manoel'
where codPes = 5

--3)
insert into Pessoa
values (6, 'Gustavo')

--4)
alter table Pessoa
add fone varchar(9)

--5)
select * from Disciplina

--6)
alter table Disciplina
add situacao varchar(1)

--7)
update Pessoa set fone = '123456789'
where codPes = 1

update Pessoa set fone = '987654321'
where codPes = 2

update Pessoa set fone = '456123789'
where codPes = 3

update Pessoa set fone = '897564123'
where codPes = 4

update Pessoa set fone = '357941267'
where codPes = 5

update Pessoa set fone = '220022009'
where codPes = 6

--8)
update Disciplina set situacao = 'A'

--9)
update Departamento set depto = 'Exatas'
where codDep = 5

--10)
select NomePes from Pessoa

--11)
update Disciplina set situacao = 'I'
where codDis = 1 or codDis = 2 or codDis = 3

--12)
select * from Livro

--13)