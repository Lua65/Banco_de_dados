drop database curso;
create database curso;
use curso;
 create table alunos (
	id_aluno int primary key auto_increment,
    nome varchar(70),
    cpf char(11) unique,
    data_nascimento date,
    email varchar(80)
 
 );
 
 insert into alunos ( id_aluno, nome, cpf, data_nascimento, email)
 values( 1, 'Luiz', '18953907652', '2005-02-24', 'luiz462@gmail.com');
 select * from alunos;
 
 create table turmas (
	id_turma int primary key auto_increment,
    codigo_turma char(10),
    curso varchar (60),
    turno varchar(20),
    sala varchar(10)
 );
 
 insert into turmas ( id_turma, codigo_turma, curso, turno, sala)
 values( 30, 'TEC8963470', 'Técnico em desenvolvimento de sistemas', 'Tarde', 'LAB TI');
 select * from turmas;
 
 create table alunos_turmas(
	id_aluno int,
    id_turma int,
    foreign key (id_aluno) references alunos (id_aluno),
	foreign key (id_turma) references turmas (id_turma)

 );
 
 insert into alunos_turmas ( id_aluno, id_turma)
 values( 1,  30);
 
 select * from alunos_turmas;