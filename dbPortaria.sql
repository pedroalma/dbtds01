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
codUsu int not null,
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


insert into tbCliente(nome,email,telCel)values("juana darc","juaninha@gmail.com","98451-6521");
insert into tbCliente(nome,email,telCel)values("luan parc","luan@gmail.com","95451-6521");
insert into tbCliente(nome,email,telCel)values("mario","mario@gmail.com","95491-6521");		

insert into tbFornecedores(nome,email,telefone,cnpj)values("armarinho","armarinhofer@gmail.com","92153-3265","21.465.987/3210-32");
insert into tbFornecedores(nome,email,telefone,cnpj)values("marinho","armari@gmail.com","92653-3265","21.495.987/3210-32");
insert into tbFornecedores(nome,email,telefone,cnpj)values("mariLuz","mariLuz@gmail.com","92198-3265","98.465.987/3210-32");
insert into tbFornecedores(nome,email,telefone,cnpj)values("luis","casaluis@gmail.com","92453-3265","21.985.987/3210-32");

insert into tbUsuarios(nome,senha,codFunc) values("leticia","123456",1);

insert into tbProduto(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)values("papel","798465","2024-11-10","2023-11-10","12:46:00",100,"1000.20",2);


insert into tbVenda(valor,quantidade,dataVend,horaCend,codUsu,codPro,codCli)values("3000.90",10,"2023-11-10","12:20:00",0,1,2);	

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