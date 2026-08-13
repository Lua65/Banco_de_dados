#Nível 1: Ordenação (ORDER BY)

select * from funcionarios order by nome asc;

select * from funcionarios order by salario desc;

select * from funcionarios order by nascimento asc;

#Nível 2: Limitando Resultados (LIMIT)

select * from funcionarios order by salario desc limit 5;

select * from funcionarios order by nascimento desc limit 3;

#Nível 3: Filtragem (WHERE)

select * from funcionarios where cargo = 'Analista de Dados';

select * from funcionarios where  salario = 3500;

select * from funcionarios where salario > 5000;

select * from funcionarios where salario < 2000;

select * from funcionarios where nascimento > '1990-01-01';

select * from funcionarios where cargo = 'Médico' and salario > 4000;

select * from funcionarios where cargo like 'Contador' or cargo like 'Contador Fiscal';

#Nível 4: Desafios (WHERE + ORDER BY)

select * from funcionarios where cargo like 'Nutricionista' order by nome asc;

select * from funcionarios where salario > 3000 order by salario asc;

#Nível 5: LIKE

select nome, cargo, salario from funcionarios where nome like 'M%';

select nome, cargo from funcionarios where cargo like '%Analista%';

select nome, cpf, nascimento from funcionarios where nome like '%Williams';