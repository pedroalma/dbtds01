drop database dbZoologico;
-- Crie uma database chamada ZOOLOGICO.
create database dbZoologico;
use dbZoologico;
-- Na database ZOOLOGICO, crei uma tabela chamada ANIMAIS com os seguintes campos:
create table tbanimais(
codigo int,
tipo char(15),
Nome char(30),
idade int,
valor decimal(10,2)
);

insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(1,"cachorro","Djudi",3,300.00);
insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(2,"cachorro","Sula",5,300.00);
insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(3,"cachorro","sarina",7,300.00);
insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(4,"gato","pipa",2,500.00);	
insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(5,"gato","sarangue",2,500.00);
insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(6,"gato","clarences",1,500.00);
insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(7,"coruja","agnes",0,700.00);
insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(8,"coruja","arabela",1,700.00);	
insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(9,"sapo","quash",1,100.00);	
insert into tbanimais(codigo,Tipo,Nome,idade,valor)values(10,"peixe","fish",0,100.00);		
-- Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS

desc tbanimais;	

-- Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS. 
select * from tbanimais;

--Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS, apresentando todos os registros da tabela. 
select Tipo , Nome from tbanimais;

--Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS, apresentado todos os registros.
select Tipo , Nome, idade from tbanimais;

--Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias [Tipo de Animal] e a coluna nome com o alias [Nome do Animal]. 
select Tipo as "Tipo de animal", Nome as "Nome do animal" from tbanimais;

--Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna IDADE com o alias [Tempo de Vida]. 
select Tipo as "Tipo de animal", Nome as "Nome do animal",idade as "Tempo de Vida" from tbanimais;

-- select codFunc * 3.14161825 as "PI", salario *3.141825 as "Aumento", idade + 10 as idade from tbFuncionarios;
-- select "legais"as "observacao" ,Nome,idade from tbfuncionarios;
-- select "Animal Domestico" as "procedencia",Tipo as "Tipo de animal", Nome as "Nome do animal",idade as "Tempo de Vida" from tbanimais;

--Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma
select "Animal Domestico" as "Procedência",Tipo , Nome ,idade as "Tempo de vida" from tbanimais;

--Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma: 
select Tipo, Nome,idade as "Idade", valor as "Valor Original",valor * 1.10 as "Valor de Venda" from tbanimais;

--Escreva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir,apresentando uma vez os dados repetidos. 
select Tipo , valor as "Valor Original",valor *1.10 as "Valor de Venda" from tbanimais;