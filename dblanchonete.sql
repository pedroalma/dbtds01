-- apagando o banco de dados se existir 
drop database dblanchonete;
-- visualizar banco de dados 
show databases;
-- criar um banco de dados 
create database dblanchonete;
-- acessar o banco de dados 	
use dblanchonete;
-- criando as tabelas para o banco de dados 
create table tbUsuarios(
codusu int ,
nome varchar(30),
senha varchar(12)
);
create table tbfuncionarios(
codfun int,
nome varchar(100),
email varchar(100),
telefone char(10),
logradouro varchar(100),
numero char(10),
complemento varchar(100),
bairro varchar(100),
cep char(9),
cidade varchar(100),
estado char(2)
);
-- visualizando as tabelas 
show tables;
-- visualizar a estrutura da tabela 
desc tbUsuarios;
desc tbfuncionarios;