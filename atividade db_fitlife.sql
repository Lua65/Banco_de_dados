drop database if exists db_fitlife;
create database db_fitlife;
use db_fitlife;

create table usuarios (
	id_usuario int primary key auto_increment,
    nome varchar(100),
    email varchar(100),
    data_nascimento date,
    cidade varchar (50)
);

create table metas (
	id_meta int primary key auto_increment,
    id_usuario int,
    foreign key (id_usuario) references usuarios(id_usuario),
    tipo_meta enum ('Peso', 'Distancia', 'Calorias'),
    valor_alvo decimal(8,2),
    data_inicio date,
    status enum('Ativa', 'Concluida')
);

create table atividades(
	id_atividade int primary key auto_increment,
    id_usuario int,
    foreign key (id_usuario ) references usuarios(id_usuario),
    tipo_exercicio varchar(50),
    duracao_minutos int,
    calorias_queimadas int,
    data_registro date

);

update usuarios set cidade = 'São Paulo' where  id_usuario = 5;

update metas set status = 'Concluida' where id_usuario = 2;


select u.nome, u.email, m.status from usuarios  as u inner join metas as m on  u.id_usuario = m.id_usuario where status = 'Ativa';
select * from metas;

select count(*) as 'Total de moradores do Rio de Janeiro'from usuarios where cidade = 'Rio de Janeiro';

select u.nome, a.tipo_exercicio from usuarios as u inner join atividades as a on u.id_usuario = a.id_usuario;

select u.nome, m.tipo_meta, m.valor_alvo, m.status from usuarios as u inner join metas as m on u.id_usuario = m.id_usuario where nome = 'Juliana Castro'; 
 