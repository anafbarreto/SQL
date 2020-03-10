use Teste;

create table Fornecedor (
	id_fornecedor int primary key not null IDENTITY(1,1), -- identity define uma sequencia automatica, começando e seguindo de 1 em 1 (1,1)
	razao_social varchar(100) not null, -- not null torna o campo obrigatorio
	nome_fantasia varchar(100), -- varchar deixa preencher até 100 (nesse caso) mas permite preenchimento menor
	cnpj char(14) not null,  -- char exige o tamanho definido exatamente
	inscricao_estadual char(12),
	endereco varchar(100) not null,
	email varchar(100) not null
)