#Relatório 1 (Marketing): "Flash Sale"
#▪ Pedido: "Preciso dos 3 produtos mais baratos da categoria 'Hardware' que tenhamos em estoque (quantidade_estoque > 0) para a promoção da página inicial."
select * from produtos where quantidade_estoque > 0 and categoria like 'Hardware' order by preco limit 3;

#Relatório 2 (Compras): "Auditoria de Estoque"
#▪ Pedido: "Quero uma lista de todos os produtos (nome e SKU) que estão com estoque zerado (quantidade_estoque = 0) para eu poder fazer o pedido de reposição."
select nome_produto, sku from produtos where quantidade_estoque = 0;

#Relatório 3 (Marketing): "Itens de Luxo"
#▪ Pedido: "Quais são os nossos 2 produtos mais caros da loja inteira? Quero o nome e o preço."
select nome_produto, preco from produtos order by  preco desc limit 2;

#Relatório 4 (Busca): "Itens Específicos"
#▪ Pedido: "Um cliente ligou procurando por 'Placas'. Gere um relatório de todos os produtos que contenham a palavra 'Placa' em seu nome (Ex: Placa de Vídeo, Placa-mãe)."
select * from produtos where nome_produto like '%Placa%';

#Relatório 5 (Finanças): "Produtos Mais Caros por Categoria"
#▪ Pedido: Mostrar os 3 produtos mais caros da categoria 'Periféricos'
select * from produtos where categoria like 'Periféricos' order by preco desc limit 3;
