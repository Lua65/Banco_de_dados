#Exercício 1: Exclua o cliente com id_cliente igual a 5
delete from clientes where id_cliente = 5;
select * from clientes where id_cliente = 5;

#Exercício 2: Exclua o Felipe Mendes do banco de dados
delete from clientes where nome = 'Felipe Mendes';
select * from clientes where nome = 'Felipe Mendes';

#Exercício 3: Exclua todos os clientes de Manaus
delete from clientes where cidade = 'Manaus';
select * from clientes where cidade = 'Manaus';

#Exercício 4: Exclua clientes com idade abaixo ou igual a 23 anos
delete from clientes where idade <= 23;
select * from clientes where idade = 23;