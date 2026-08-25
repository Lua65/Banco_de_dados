/* LISTA DE EXERCÍCIOS - GROUP BY
   Foco: Agrupamento de dados com COUNT, AVG, SUM, MAX
*/

-- 1. Filmes por Ano: Quantos filmes foram lançados em cada ano?
select ano_lancamento, count(*) as quantidade_filmes_ano from filmes group by ano_lancamento having quantidade_filmes_ano;

-- 2. Duração Média por Gênero: Qual é a duração média (em minutos) dos filmes de cada gênero?
select genero, avg(duracao) as duracao_media_minutos_genero from filmes group by genero having duracao_media_minutos_genero;

-- 3. Atores por Nacionalidade: Quantos atores e atrizes temos cadastrados de cada nacionalidade?
select nacionalidade, count(sexo) as atores_atrizes_nacionalidade from atores group by nacionalidade having atores_atrizes_nacionalidade;

-- 4. Clientes por Estado: Quantos clientes temos em cada Estado brasileiro?
select estado, count(regiao) as clientes_por_estado from clientes group by estado;


-- 5. Receita Potencial por Gênero: Qual é a soma dos preços de aluguel de todos os filmes, agrupados por gênero?
select genero, sum(preco_aluguel) as soma_alguel_genero from filmes group by genero having soma_alguel_genero;

-- 6. Popularidade dos Filmes (Alugueis por Filme): Quantas vezes cada filme (pelo ID) foi alugado?
select id_filme, count(*) as filme_id_alugado from alugueis group by id_filme having filme_id_alugado;

-- 7. Comportamento do Cliente (Média de Notas): Qual é a nota média que cada cliente (pelo ID) costuma dar para os filmes?
select id_cliente, avg(nota) as media_nota from alugueis group by id_cliente having media_nota;

-- 8. Distribuição por Sexo (Atores): Quantos atores são do sexo masculino e quantos são do feminino?
select sexo, count(*) as atores_masculinos_femininos from atores group by sexo;

-- 9. Alugueis por Dia: Quantos alugueis foram realizados em cada data específica?
select data_aluguel, count(*) as aluguel_por_data from alugueis group by data_aluguel;

-- 10. Maior Preço por Ano: Qual foi o filme mais caro (maior preço de aluguel) lançado em cada ano?
select  ano_lancamento, max(preco_aluguel) as filme_mais_caro from filmes group by ano_lancamento;