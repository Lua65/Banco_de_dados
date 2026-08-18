
create database alterar;
use alterar;

create table clientes (
	id varchar(200), -- deveria ser INT
	nome int, -- deveria ser VARCHAR
	cpf date, -- deveria ser CHAR(11)
	data_nascimento varchar(10), -- deveria ser DATE
	renda_mensal boolean -- deveria ser DECIMAL ou FLOAT

);



create table produtos (
	id text, -- deveria ser INT
	nome boolean, -- deveria ser VARCHAR
	preco  varchar(5), -- deveria ser DECIMAL(10,2)
	quantidade decimal(10,2), -- deveria ser INT
	ativo INT -- deveria ser BOOLEAN

);

create table pedidos (
	id varchar(100), -- deveria ser INT
	cliente_id date, -- deveria ser INT (FK)
	valor_total char (5), -- deveria ser DECIMAL
	data_pedido int, -- deveria ser DATE
	status varchar(3) -- deveria ser ENUM com opções

);

select * from clientes;

alter table clientes modify column  id int;
alter table clientes modify column nome varchar(70);
alter table clientes modify column cpf char(11);
alter table clientes modify column data_nascimento date;
alter table clientes modify column renda_mensal decimal(10,2);

alter table pedidos modify column  id int;
alter table pedidos modify column cliente_id int primary key;
alter table pedidos modify column valor_total Decimal(10,2);
alter table pedidos modify column data_pedido date;
alter table pedidos modify column status enum ('A', 'B', 'C');

alter table clientes modify column  id int;
alter table clientes modify column nome varchar(70);
alter table clientes modify column cpf char(11);
alter table clientes modify column data_nascimento date;
alter table clientes modify column renda_mensal decimal(10,2);
