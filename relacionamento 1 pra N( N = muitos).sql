drop database loja_carros;
create database loja_carros;

use loja_carros;

create table marca(
	id_marca int primary key auto_increment,
    nome varchar(45),
    pais_origem varchar(45)
);


create table veiculos (
	id_veiculo int primary key auto_increment,
    placa char(7),
    ano_fabricacao int,
    modelo varchar(45),
    preco decimal(10,2),
    id_marca int,
    foreign key (id_marca) references marca (id_marca)
);

insert into marca(id_marca, nome, pais_origem)
values(1, 'Honda', 'Japâo' );

insert into veiculos(
	id_veiculo, placa, ano_fabricacao, modelo, preco, id_marca
)values(
	20,'GWJ67L6', '2001', 'Honda City', '100000', 1
);

select * from veiculos;