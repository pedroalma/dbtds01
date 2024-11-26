drop database dbPortaria;
create database dbPortaria;

use dbPortaria;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key(codFunc)
);

create table tbCliente(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telCel char(10),
primary key(codCli)
);


create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(10),
cnpj char(18) not null unique,
primary key(codForn)
);


create table tbUsuarios(
codUsu int not null ,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc) 
);


create table tbProduto(
codPro int not null auto_increment,
descricao varchar(100) not null,
lote varchar(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key(codPro),
foreign key(codForn)references tbFornecedores(codForn)
);

create table tbVenda(
codVend int not null auto_increment,
valor decimal(9,2),
quantidade int,
dataVend date,
horaCend time,
codUsu int not null,
codPro int not null,
codCli int not null,
primary key(codVend),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codPro)references tbProduto(codPro),
foreign key(codCli)references tbCliente(codCli)
);


insert into tbFuncionarios(nome,rg,cpf,sexo,salario) values("matheus melo","26.132.354-8","321.546.978-07",	"M",2500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario) values("leticia","26.465.354-8","321.321.978-07","F",3500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario) values("hugo melo","26.132.789-8","221.546.978-07","M",4500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario) values("pedro","26.495.354-8","321.329.978-07","M",3500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario) values("luan","26.182.789-8","221.546.988-07","M",4500.45);

insert into tbCliente(nome,email,telCel)values("juana darc","juaninha@gmail.com","98451-6521");
insert into tbCliente(nome,email,telCel)values("luan parc","luan@gmail.com","95451-6521");
insert into tbCliente(nome,email,telCel)values("mario","mario@gmail.com","95491-6521");		
insert into tbCliente(nome,email,telCel)values("julio","julio@gmail.com","95851-6521");
insert into tbCliente(nome,email,telCel)values("marcia","marcia@gmail.com","99491-6521");		

insert into tbFornecedores(nome,email,telefone,cnpj)values("armarinho","armarinhofer@gmail.com","92153-3265","21.465.987/3210-32");
insert into tbFornecedores(nome,email,telefone,cnpj)values("marinho","armari@gmail.com","92653-3265","21.495.987/3210-32");
insert into tbFornecedores(nome,email,telefone,cnpj)values("mariLuz","mariLuz@gmail.com","92198-3265","98.465.987/3210-32");
insert into tbFornecedores(nome,email,telefone,cnpj)values("luis","casaluis@gmail.com","92453-3265","21.985.987/3210-32");
insert into tbFornecedores(nome,email,telefone,cnpj)values("pereira","pereira@gmail.com","99453-3265","28.985.987/3210-32");


insert into tbUsuarios(codUsu,nome,senha,codFunc) values(1,"matheus","323456",1);	
insert into tbUsuarios(codUsu,nome,senha,codFunc) values(2,"leticia","128456",2);
insert into tbUsuarios(codUsu,nome,senha,codFunc) values(3,"hugo.melo","329456",3);	
insert into tbUsuarios(codUsu,nome,senha,codFunc) values(4,"pedro","123656",4);

insert into tbProduto(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values("papel","798465","2024-11-10","2023-11-10","12:46:00",100,"1000.20",1);
insert into tbProduto(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values("LAPIS","796465","2040-11-10","2023-11-10","11:40:00",100,"1200.20",2);	
insert into tbProduto(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values("CADERMO","498465","2028-11-10","2023-11-10","12:20:00",100,"30.20",3);
insert into tbProduto(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values("notebook","795265","2028-09-10","2023-11-10","07:40:00",20,"3500.20",4);	
insert into tbProduto(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values("celular","795265","2028-09-10","2023-11-10","07:40:00",200,"4500.20",5);

insert into tbVenda(valor,quantidade,dataVend,horaCend,codUsu,codPro,codCli)values("3000.90",10,"2023-11-10","12:20:00",1,1,2);	
insert into tbVenda(valor,quantidade,dataVend,horaCend,codUsu,codPro,codCli)values("300.90",3,"2023-11-10","12:20:00",3,2,2);	
insert into tbVenda(valor,quantidade,dataVend,horaCend,codUsu,codPro,codCli)values("3000.90",10,"2023-11-10","12:20:00",1,3,1);	
insert into tbVenda(valor,quantidade,dataVend,horaCend,codUsu,codPro,codCli)values("3000.90",10,"2023-11-10","12:20:00",1,4,3);	
insert into tbVenda(valor,quantidade,dataVend,horaCend,codUsu,codPro,codCli)values("9000.90",2,"2023-11-10","12:20:00",1,5,4);		

desc tbFuncionarios;
desc tbCliente;
desc tbFornecedores;
desc tbUsuarios;

	
select *from tbFuncionarios;
select *from tbCliente;
select *from tbFornecedores;
select *from tbUsuarios;
select *from tbProduto;
select *from tbVenda;


select func.nome as "nome do funcionarios",usu.nome as "nome do Usuarios" from tbUsuarios as usu inner join tbFuncionarios as func on usu.codFunc = func.codFunc where func.codFunc = 2;

select func.nome as "nome do funcionarios",usu.nome as "nome do Usuarios" from tbUsuarios as usu inner join tbFuncionarios as func on usu.codFunc =  func.codFunc where func.nome like "%l%";

select func.nome as "nome do funcionarios",usu.nome as "nome do Usuarios" from tbUsuarios as usu inner join tbFuncionarios as func on usu.codFunc = func.codFunc where func.nome not like "%l%";

select func.nome,cli.nome,prod.descricao,vend.quantidade,vend.valor from tbVenda as vend inner join tbFuncionarios as func on func.codFunc = vend.codUsu inner join tbCliente as cli on vend.codCli = cli.codCli inner join tbProduto as prod on vend.codPro = prod.codPro;

--                                                                               nome do fornecedor ,lote do produto ,validade do produto ,
--                                                                               email do fornecedor quantidade de produto ,
--                                                                               cnpj do fornecedor ,preco do produto,
--                                                                               a pergunta e para a tabela produto.
select forn.nome , Pro.lote , Pro.validade , forn.email, Pro.quantidade ,forn.cnpj, Pro.preco  from tbProduto as Pro inner join tbFornecedores as forn on Pro.codPro = forn.codForn ;


 -- tbProduto(descricao,lote,validade,quantidade,preco\tbVenda(valor,quantidade\tbFornecedores(nome,email,telefone,cnpj
select Pro.descricao as "Produto" ,Pro.lote as "numero do lote" , Pro.validade ,Pro.quantidade ,Pro.preco "Preço do produto",vend.valor as "Valor da venda ", vend.quantidade as "quantidade vendida" ,forn.nome as "Nome do Fornecedor",forn.email as "email do Fornecedor" ,forn.telefone as "telefone do Fornecedor",forn.cnpj as "cnpj do Fornecedor" from tbProduto as Pro inner join tbVenda as vend on pro.codPro = vend.codPro inner join tbFornecedores as forn on Pro.codForn = forn.codForn;

