-- 📝 10 Exercícios de Consulta SQL (INNER JOIN)

-- ---
-- Nível Fácil (1-8)

-- 1. Exibir o nome e o e-mail de todos os usuários que têm alguma meta registrada, juntamente com o tipo de meta associado.
select u.nome, u.email, m.tipo_meta from usuarios as u inner join metas as m on u.id_usuario = m.id_usuario;

-- 2. Exibir o nome do usuário e a data de registro de todas as atividades, juntamente com o tipo de exercício realizado.
select u.nome, a.data_registro, a.tipo_exercicio from atividades as a inner join usuarios as u on a.id_usuario = u.id_usuario;

-- 3. Listar o nome do usuário e o valor alvo de todas as metas que têm o status de 'Ativa'.
select u.nome, m.valor_alvo from usuarios as u inner join metas as m on u.id_usuario = m.id_usuario where status = 'Ativa';

-- 4. Exibir o tipo de exercício e a duração em minutos para todas as atividades que foram registradas pelo usuário de nome 'Ana Silva'.
select a.tipo_exercicio, a.duracao_minutos from atividades as a inner join usuarios as u on a.id_usuario = u.id_usuario where nome = 'Ana Silva';
 
-- 5. Listar o nome de todos os usuários que têm metas do tipo 'Peso', exibindo também o id_meta correspondente.
select u.nome, m.tipo_meta, m.id_meta from usuarios as u inner join metas as m on u.id_usuario = m.id_usuario where m.tipo_meta = 'Peso';

-- 6. Exibir o nome do usuário e a quantidade de calorias queimadas em todas as atividades de 'Caminhada'.
select u.nome, a.calorias_queimadas from atividades as a inner join usuarios as u on u.id_usuario = a.id_usuario where a.tipo_exercicio = 'Caminhada';

-- 7. Listar o nome do usuário e o tipo de meta para todas as metas que foram concluídas (status = 'Concluida').
select u.nome, m.tipo_meta from usuarios as u inner join metas as m on u.id_usuario = m.id_usuario where m.status = 'Concluida';

-- 8. Exibir o nome e a cidade do usuário que registrou a atividade com o id_atividade igual a 105.
select u.nome, u.cidade from usuarios as u inner join atividades as a on u.id_usuario = a.id_usuario where id_atividade = 105;

-- ---
-- Nível Médio (9-10)

-- 9. Listar o nome do usuário e a média de calorias queimadas por ele, mas apenas para os usuários que têm metas ativas.
select u.nome, avg(calorias_queimadas) from usuarios as u inner join atividades as a 
on u.id_usuario = a.id_usuario 
inner join metas as m on u.id_usuario = m.id_usuario
where m.status = 'Ativa'  
group by u.nome;

-- 10. Exibir o nome do usuário e a soma total da duração em minutos de suas atividades. O resultado deve incluir somente usuários que têm registrado atividades e metas de 'Distancia'.
select u.nome, sum(duracao_minutos) as 'Soma dos minutos'from usuarios as u
inner join atividades as a on u.id_usuario = a.id_usuario
inner join metas as m on u.id_usuario = m.id_usuario 
where m.tipo_meta = 'Distancia' group by u.nome;