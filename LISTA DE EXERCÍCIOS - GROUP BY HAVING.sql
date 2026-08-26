-- EXERCÍCIO 1: filmes alugados mais de 5 vezes

select id_filme, count(*) as total_alugados from alugueis group by id_filme having total_alugados > 5;

-- EXERCÍCIO 2: clientes que fizeram 3 ou mais alugueis

select id_cliente, count(*) as alugueis_cliente from alugueis group by id_cliente having alugueis_cliente > 3;

-- EXERCÍCIO 3: gêneros com média de preço acima de 2.50

select genero, round(avg(preco_aluguel),2) as media_preco from filmes group by genero having media_preco > 2.50;

-- EXERCÍCIO 4: anos com mais de 4 filmes cadastrados

select ano_lancamento, count(*) as lancamento_ano from filmes group by ano_lancamento having lancamento_ano > 4;

-- EXERCÍCIO 5: atores que atuaram em mais de 1 filme

select id_ator, count(*) as atores_filmes from atuacoes group by id_ator having atores_filmes > 1;

-- EXERCÍCIO 6: estados com mais de 6 clientes

select estado, count(*) as clientes_estado from clientes group by estado having clientes_estado > 6;

-- EXERCÍCIO 7: filmes com média de nota maior que 8

select id_filme, round(avg(nota),2) as media_nota from alugueis group by id_filme having media_nota > 8;

-- EXERCÍCIO 8: clientes que alugaram 2+ filmes diferentes

select id_cliente, count(distinct id_filme) as quantidade_aluguel from alugueis group by id_cliente having quantidade_aluguel >= 2; 

-- EXERCÍCIO 9: anos cuja soma de duração ultrapassa 500

select ano_lancamento, sum(duracao) as duracao_ano from filmes group by ano_lancamento having duracao_ano > 500;

-- EXERCÍCIO 10: nacionalidades com mais de 8 atores

select nacionalidade, count(*) as nacionalidade_ator from atores group by nacionalidade having nacionalidade_ator > 8;