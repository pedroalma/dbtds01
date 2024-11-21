drop database dbloterica;
create database dbloterica;
use dbloterica;
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(9),
cpf char(14),
idade int,
salario decimal(9,2)  
);

insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)values(1,"pedro alma","pedroalma@gmail.com","96415-5048","321.321.321-21",20,1500.50);	
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)values(2,"regina miranda","reginana@gmail.com","98415-8888","321.132.212.15",20,1500.50);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)values(3,"mario do santos","mariosantos@gmail.com","98415-3265","465.213.465.45",20,1500.50);
insert into tbFuncionarios(nome,email,idade,salario)values("romario","romario@gmail.com",20,1500.50);
insert into tbFuncionarios(codFunc,nome,email,idade,salario)values(4,"ronaldo","ronaldo@gmail.com",20,1500.50);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)values(5,"redrgina miranda","reginanOSEYHa@gmail.com","98845-8888","981.132.212.15",20,1500.50);
desc tbFuncionarios;
delete from tbfuncionarios where codfunc =5;
select codFunc,nome,email,telefone,cpf from tbFuncionarios;
select nome,email from tbFuncionarios;


select codFunc,nome,email,telefone,cpf,idade,salario from tbFuncionarios;
select codFunc as 'Codigo', nome as 'Nome' from tbFuncionarios;
-- update tbFuncionarios set nome="fernando cunha",email ="Fernando.cunha@gmail.com",telefone="98923-5717" where codFunc=5;
update tbFuncionarios set codFunc=6,telefone="98845-8888",cpf="981.132.212.15" where nome="romario";
select codFunc,nome,email,telefone,cpf,idade,salario from tbFuncionarios;	
update tbFuncionarios set nome="fernando cunha",email ="Fernando.cunha@gmail.com",telefone="98923-5717",idade=57,salario=3000.90 where codFunc=5;
select codFunc,nome,email,telefone,cpf,idade,salario from tbFuncionarios;		
select "legais"as "observacao" ,nome,idade from tbfuncionarios;
select nome,idade,"legal" as "observacao",email from tbfuncionarios;
-- select nome, salario *1.10 as "Aumento de salario" from tbFuncionarios;
select codFunc,nome,email,telefone,cpf,idade,salario from tbFuncionarios;
select nome, salario *0.75 as "Desconto" from tbFuncionarios;	
select codFunc * 3.14161825 as "PI", salario *3.141825 as "Aumento", idade + 10 as idade from tbFuncionarios;