create database mercado_local_luana;
use mercado_local_luana;

create table produto (
	id_produto INT,
    nome_produto VARCHAR(45),
    preco DECIMAL(10,2),
    estoque INT

);

insert into produto (
	id_produto, nome_produto, preco, estoque
) values(
	01, 'Arroz', 20.99, 30
);

insert into produto (
	id_produto, nome_produto, preco, estoque
) values(
	02, 'Feijão', 15.50, 10
);

insert into produto (
	id_produto, nome_produto, preco, estoque
) values(
	03, 'Macarrão', 10.00, 10
);

insert into produto (
	id_produto, nome_produto, preco, estoque
) values(
	04, 'Molho de tomate', 5.30, 20
);

insert into produto (
	id_produto, nome_produto, preco, estoque
) values(
	05, 'Açúcar', 7.50, 10
);

select * from produto;

create table pedido (
	id_pedido INT,
    data_pedido DATETIME,
    valor_total DECIMAL(10,2),
    forma_pagamento Enum('Pix','crédito', 'Débito' )

);

insert into pedido (
	id_pedido , data_pedido, valor_total, forma_pagamento
) values
(01, '2026-07-14 10:35:00', 50.00 , 'Pix'),
(02, '2026-08-01 15:35.05', 27.00, 'Pix');

select * from pedido;


drop database mercado_local_luana;
