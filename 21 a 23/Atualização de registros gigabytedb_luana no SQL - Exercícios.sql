use gigabytedb_luana;

#Exercício 1: A loja recebeu um novo lote de placas-mãe Asus B550.
#Atualize o campo quantidade_estoque para 25 unidades onde o SKU for HW005.

update produtos set quantidade_estoque = 25 where sku = 'HW005';
select * from produtos where sku = 'HW005';

#Exercício 2: A placa de vídeo GTX 1660 chegou novamente ao estoque.
#Defina quantidade_estoque como 10 para o SKU HW010.

update produtos set quantidade_estoque = 10 where sku = 'HW0010';
select * from produtos where sku = 'HW010';

#Exercício 3: O produto RTX 4070 Ti teve uma redução de preço para R$ 4999,00.
#Atualize o preço desse produto (SKU HW012).

update produtos set preco = 49999 where sku = 'HW012';
select * from produtos where sku = 'HW012';

# Exercício 4: A descrição da Fonte 1000W Modular deve incluir a certificação “80 Plus Gold”.
#Atualize o campo nome_produto para refletir essa informação (SKU HW017).

update produtos set nome_produto = 'Fonte 1000W Modular 80 Plus Gold' where sku = 'HW017';
select * from produtos where sku = 'HW017';