drop database dbescola;
create database dbescola;
show databases;
use dbescola;
create table tbcursoaluno(
curso_idcurso int,
aluno_idaluno int 
);
create table tbcurso(
codcurso int,
nome varchar(45),
professor_idprofessor int
);
create table tbprofessor(
codprofessor int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45) 
);
create table tbaluno(
codaluno int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45) 
);
desc tbcursoaluno;
desc tbcurso;
desc tbprofessor;
desc tbaluno;

