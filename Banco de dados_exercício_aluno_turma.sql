create database gestao_escolar_luana;
use gestao_escolar_luana;

create table aluno(
	id_aluno INT,
	nome VARCHAR(45),
	data_nascimento date,
	telefone CHAR (13)
);

insert into aluno(
	id_aluno, nome, data_nascimento, telefone

) values (
	01, 'Lucia Alves', '2010-05-20', '25780558742026'
);

insert into aluno(
	id_aluno, nome, data_nascimento, telefone

) values (
	02, 'juliana Almeida', '2005-09-17', '25780558745420'
);

insert into aluno(
	id_aluno, nome, data_nascimento, telefone

) values (
	03, 'Luiz Augusto', '2005-02-24', '25780558717450'
);
insert into aluno(
	id_aluno, nome, data_nascimento, telefone

) values (
	04, 'Hytalo Almeida', '2001-10-25', '257805581984563'
);

insert into aluno(
	id_aluno, nome, data_nascimento, telefone

) values (
	05, 'julia Cardoso', '2009-09-05', '25780558742026'
);

create table turma(
	id_turma INT,
	nome_turma VARCHAR(45),
	turno ENUM('tarde', 'manhã', 'noite'),
    ano_letivo VARCHAR(45)
);

insert into turma(
	id_turma, nome_turma, turno, ano_letivo

) values ( 
	01, '3001 INOVADOR', 'Manhã', '3°'
);

insert into turma(
	id_turma, nome_turma, turno, ano_letivo

) values ( 
	02, '3002 INOVADOR', 'Manhã', '3°'
);


select * from aluno;
select * from turma;
