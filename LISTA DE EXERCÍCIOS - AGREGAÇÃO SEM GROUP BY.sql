/* LISTA DE EXERCÍCIOS - AGREGAÇÃO SEM GROUP BY 
   Foco: COUNT, SUM, AVG, MIN, MAX com filtros (WHERE)
*/

-- 1. COUNT: Quantos filmes de 'Drama' existem no catálogo?
select count(*) from filmes;

-- 2. SUM: Qual seria a receita total se alugássemos todos os filmes de 'Comédia' uma única vez?
select round(sum(preco_aluguel),2) as 'Receita dos filmes' from filmes where genero = 'Comédia';

-- 3. AVG: Qual é a média de duração (em minutos) dos filmes do gênero 'Ficção e Fantasia'?
select avg(duracao) as 'média de duração' from filmes where genero like 'Ficção e Fantasia%';

-- 4. MAX: Qual é o preço de aluguel mais caro entre os filmes lançados no ano de 2011?
select max(preco_aluguel)as 'Maior preço de aluguel 2011' from filmes where ano_lancamento = 2011;

-- 5. MIN: Qual é o preço de aluguel mais barato entre os filmes do gênero 'Ação e Aventura'?
select min(preco_aluguel) as 'Menor preço de aluguel (Ação e Aventura)' from filmes where genero like 'Ação e Aventura';

-- 6. COUNT: Quantos clientes moram na região 'Sudeste'?
select count(regiao) as 'Quantidade de clientes da região Sudeste' from clientes where regiao like 'Sudeste';

-- 7. AVG: Qual é a média de preço de aluguel de todos os filmes lançados após o ano de 2010?
select round(avg(preco_aluguel),2) as 'Média de aluguel dos filmes lançados depois de 2010' from filmes where ano_lancamento > 2010;

-- 8. MIN: Qual é a data de nascimento do ator/atriz mais velho(a) registrado no banco?
select min(ano_nascimento) as 'Ator/Atriz mais velho(a)' from atores;

-- 9. MAX: Qual é a data de nascimento do cliente mais jovem do sexo 'masculino'?
select max(data_nascimento) as 'Cliente mais jovem' from clientes where sexo like 'masculino%';

-- 10. COUNT: Quantos alugueis receberam a nota máxima (10)?
select count(nota) as 'Quantidade de alugueis que receberam nota máxima' from alugueis;

-- 11. AVG: Qual é a média das notas dadas para o filme com id_filme = 5 (O Senhor dos Anéis)?
select avg(nota) as 'Média de notas dada para o filme O senhor dos Anéis' from alugueis where id_filme = 5;

-- 12. SUM: Quantos minutos no total levaria para assistir a todos os filmes de 'Mistério e Suspense' em sequência?
select sum(duracao) as 'Total de minutos para assistir todos filmes de Mistério e Suspense' from filmes where genero like 'Mistério e Suspense';

-- 13. COUNT: Quantas atrizes (sexo feminino) nascidas nos EUA estão cadastradas?
select count(nacionalidade) as 'Atrizes nascidas nos EUA' from atores where nacionalidade like 'EUA%' and sexo = 'feminino';

-- 14. AVG: Qual é a média de preço dos filmes que têm duração maior que 150 minutos?
select avg(preco_aluguel) as 'Média de preço dos filmes com duração de 150'from filmes where duracao > 150;

-- 15. COUNT: Quantos alugueis foram realizados no ano de 2018?
select count(data_aluguel) as 'Quantidade de alugueis realizados em 2018' from alugueis where data_aluguel like '2018%';

select * from alugueis where data_aluguel = 2018;