drop database dbPadaria;

create database dbPadaria;

use dbPadaria;
 
create table tbClientes(
codCli int not null auto_increment,
produtos varchar(100),
id_cartao varchar(20),
nome varchar(50),
cpf char(14) not null unique, 
cep char(9),
logradouro varchar(100),
numero int(6),
bairro varchar(11),
primary key(codCli)
);
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(50),
cpf char(14) not null unique,	
funcao varchar(10),
primary key(codFunc)
);

create table tbFornecedores(
codForn int not null auto_increment,
logradouro varchar(100),
numero int(6),
bairro varchar(11),
cep char(9),
nome varchar (50),
tel char(11),
contato_empresa varchar (100),
primary key(codForn)
);

create table tbProdutos(
codProd int not null auto_increment,
nome varchar(45),
preco decimal(9,2),
quantidade int,
validade date,
codForn int not null,
primary key(codProd),
foreign key(codForn) references tbFornecedores(codForn)
);


create table tbEstoques(
codEST int not null auto_increment,
quantidade int,
lote int not null unique,
dataEntr date,
horaEntr time,
num_reposicao int,
prodnome_reposicao varchar(50),
codProd int not null,
codForn int not null,
primary key(codEST),
foreign key(codProd) references tbProdutos(codProd),
foreign key(codForn) references tbFornecedores(codForn)
);

create table tbCartao(
codCar int not null auto_increment,
codigo_cartao char(6) not null unique,
codCli int not null,
primary key(codCar),
foreign key(codCli) references tbClientes(codCli)
);

create table tbPagamentos(
codPag int not null auto_increment,
forma_pagamento varchar(45),
devolver_troco decimal(9,2),
codCar int not null,
primary key(codPag),
foreign key(codCar) references tbCartao(codCar)
);

create table tbVendas(
codVenda int not null auto_increment,
valor_total decimal (9,2),
dataEntr date,
horaEntr time,
nome_func varchar(50),
cartao char(6) not null unique,
codFunc int not null,
codProd int not null,
codCli int not null,
codPag int not null,
primary key(codVenda),
foreign key(codFunc) references tbFuncionarios(codFunc),
foreign key(codProd) references tbProdutos(codProd),
foreign key(codCli) references tbClientes(codCli),
foreign key(codPag) references tbPagamentos(codPag)
);


insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('frios','25548','Luana','365.145.154-78','78978-654','rua general fragma', 87,'Juqueri');
 
insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('laticinios','47895','Carlos','123.456.789-68','15748-546','rua das oliveiras', 79,'Santos');
 
insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('lanches','89654','Lucas','754.541.324-00','96547-457','av paulista', 100,'Buarque');
 
insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('refrigerantes','654714','Luara','999.023.965-22','47591-333','av fim de semana ',150,'Aricanduva');
 
insert into tbClientes(produtos,id_cartao,nome,cpf,cep,logradouro,numero,bairro)
values('sorvetes','56987','nikolas','999.784.321-88','99784-150','rua camisa nova', 400,'Pires');
 
 
insert into tbFuncionarios(nome,cpf,funcao)
values('Laryssa','399.772.848-81','auxiliar');
 
insert into tbFuncionarios(nome,cpf,funcao)
values('Sara','415.487.965.99','caixa');
 
insert into tbFuncionarios(nome,cpf,funcao)
values('Pedro','111.235.458.77','padeiro');
 
insert into tbFuncionarios(nome,cpf,funcao)
values('Edna','789.652.147-87','caixa');
 
insert into tbFuncionarios(nome,cpf,funcao)
values('Ryan','321.754.698-78','padeiro');
 
 
insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Rua das Orquideas', 123,'Jardim Primavera', '01234-567','assai_atacadista','119874-5479','assai@atacado.com');
 
insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Avenida dos Girassois', 456, 'Centro', '21000-789','pao de acucar','527398-7845','acucar_pao@gmail.com');
 
insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Travessa das Palmeiras', 789,'Vila Nova','30123-456','walmart','217954-6541','walmartbr@yahoo.com.br');
 
insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Praça do Ipe Amarelo', 101,'Parque das Flores','40050-321','carrefour','449874-6541','carrefour_.com.br');
 
insert into tbFornecedores(logradouro,numero,bairro,cep,nome,tel,contato_empresa)
values('Estrada dos Jacarandass',321,'Campo Verde', '81000-654','atacadao','55495-9785','atacadao_.com.br_15');


 
insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Pao',15.50,2,'2025/10/01',1,3);
 
insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Queijo',30.00,1,'2024/12/31',2,2);
 
insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Leite',6.50, 5, '2027/01/02' ,3,1);
 
insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Coca-Cola', 21.35 ,3, '2024/09/12' ,4,5);
 
insert into tbProdutos(nome,preco,quantidade,validade,codProd,codForn)
values('Presunto',11.50,1, '2024/02/03' ,5,4);

insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(150,'145798','2024/01/10','10:45','Pao','1547',3,1);
 
insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(250,'459612','2024/10/10','12:30','Queijo','7489',2,2);
 
insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(300,'365478','2024/02/13','09:50','Leite','1275',1,3);
 
insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(350,'221465','2024/03/25','13:15','Presunto','1462',4,5);
 
insert into tbEstoques(quantidade,lote,dataEntr,horaEntr,Prodnome_reposicao,num_reposicao,codForn,codProd)
values(20,'326547','2024/06/10','07:45','Coca-Cola','5574',5,4);

insert into tbCartao(codigo_cartao,codCli)
values("XY7-QL9",)

insert into tbPagamentos(forma_pagamento,devolver_troco,codCar)
values('Pix',150,)

insert into tbVendas()

 


desc tbClientes;
desc tbFuncionarios;
desc tbFornecedores;
desc tbProdutos;
desc tbEstoques;
desc tbCartao;
desc tbPagamentos;
desc tbVendas;

select * from tbClientes;
select * from tbFuncionarios;
select * from tbFornecedores;
select * from tbProdutos;
select * from tbEstoques;