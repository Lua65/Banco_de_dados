drop database if exists cinecode;
create database CineCode;
use CineCode;

create table clientes (
	id_cliente INT primary key auto_increment,
    nome_cliente varchar(60),
    estado varchar(45),
    regiao varchar(45),
    sexo varchar(10),
    data_nascimento date,
    data_conta date

);

create table filmes(
	id_filme int primary key auto_increment,
    titulo varchar(60),
    genero varchar(45),
    duracao varchar(45),
    ano_lancamento int,
    preco_aluguel double

);

create table atores(
	id_ator int primary key auto_increment,
    nome_ator varchar(60),
    ana_nascimento date,
    nacionalidade varchar(20),
    sexo varchar(10)
);

create table alugueis(
	id_aluguel varchar(45) primary key,
    id_cliente int,
    id_filme int,
    nota double,
    data_aluguel date,
	foreign key (id_cliente) references clientes (id_cliente),
    foreign key (id_filme) references filmes (id_filme)
);

create table atuacoes (
	id_protagonista int primary key,
    id_filme int,
    id_ator int,
    foreign key (id_filme) references filmes (id_filme),
    foreign key (id_ator) references atores (id_ator)
);

#1. Cadastrar pelo menos 3 clientes.
insert into clientes( id_cliente, nome_cliente, estado, regiao, sexo, data_nascimento, data_conta)
values ( 1, 'Angela', 'Rio de Janeiro', 'Sudeste', 'Feminino', '1967-12-01', '2019-04-21');

insert into clientes( id_cliente, nome_cliente, estado, regiao, sexo, data_nascimento, data_conta)
values ( 2, 'Lorenzo', 'Rio de Janeiro', 'Sudeste', 'Masculino', '1970-05-30', '2020-12-10');

insert into clientes( id_cliente, nome_cliente, estado, regiao, sexo, data_nascimento, data_conta)
values ( 3, 'Angela', 'Rio de Janeiro', 'Sudeste', 'Feminino', '1966-01-01', '2020-05-27');

select * from clientes;


