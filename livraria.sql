create database dblivraria;
use dblivraria;
create table tblivro(
nome varchar(45),
autor varchar(45),
paginas varchar(45),
aluno_raaluno int,
colaborador_id int
);
create table tbaluno(
raaluno int,
nome varchar(45),
email varchar(45),
telefone varchar(45)
);
create table dbcolaborador(
codcolaborador int,
cpf varchar(45),
nome varchar(45),
email varchar(45),
cargo varchar(45)
);
create table dbemprestimo(
codemprestimo int,
dataemprestimo date, 
data devolucao date,
livrolsbn varchar(45),
colaboradorcpf varchar(45),
colaborador_id int 
);