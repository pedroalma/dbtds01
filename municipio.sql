drop database dbmunicipio;
create database dbmunicipio;
show databases;	
use dbmunicipio;
create table tbendereco(
codbig int(20),
bairro_id int(11),
tipo_local varchar(15),
logradouro varchar(128),
numero int(11),
complemento varchar(255)	
);	
create table tbsolicitante(
codbig int(20),
endereco_idbig int(20)
);
create table tbservico(
codbig int(11),
endereco_idbig int(20),
solicitante_idbig int(20)
);
create table tbponto(
codbig int(20),
endereco_idbig int(20)
);
create table tbbairro(
codbai int(11),
nome varchar(100),
cidade_id int (11)
);
create table tbcidade(
codbai int(11),
nome varchar(38),
estado_id int(11)
);
create table tbestado(
codbai int(11),
sigra char(2) 
);
desc tbendereco;
desc tbsolicitante;
desc tbservico;
desc tbponto;
desc tbbairro;
desc tbcidade;
desc tbestado;