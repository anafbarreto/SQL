use Teste;

insert into Fornecedor (razao_social, nome_fantasia, cnpj, inscricao_estadual, endereco, email) values ('Pedras', 'Pedras Lisas', '12345678912345', 
'123456789123', 'bla bla bla', 'teste@teste.com'); -- inserindo dados

select razao_social, id_fornecedor from Fornecedor; -- consulta

select razao_social social from Fornecedor; -- atribuindo o "apelido" social 

