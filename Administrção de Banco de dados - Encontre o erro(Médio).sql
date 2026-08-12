-- criação do banco
CREATE DATABASE empresa_tech; #Estava faltando o A do DATABASE e o ;
USE empresa_tech; #Estava escrito tek ao inves de tech

-- tabela setores
CREATE TABLE setores (
id_setor INT PRIMARY KEY AUTO_INCREMENT,
nome_setor VARCHAR(50), #Faltou uma ,
localizacao VARCHAR(30) #Tinha uma virgula desnecessária
);

-- tabela funcionarios
CREATE TABLE funcionarios (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome_funcionario VARCHAR(80), #Faltou uma ,
salario DECIMAL(8,2), #Faltou uma , entre o 8.2 e tambem uma no final
data_admissao DATE,
id_setor INT #Tinha uma virgula desnecessária
);

-- inserindo setores
INSERT INTO setores (nome_setor, localizacao) VALUES
('Administrativo', '1º andar'), #Faltou uma ,
('Financeiro', '2º andar'),
('Produção', 'Galpão A'),
('Limpeza','Térreo'); #Faltou uma ,

select * from setores; #Estava escrito setores_empresa

-- inserindo funcionários
INSERT INTO funcionarios (nome_funcionario, salario, data_admissao, id_setor) VALUES
('Carlos Silva', 3500.00, '2022-03-01', 1), #Tinha uma , entre 3500.00
('Maria Souza', 4100.00, '2021-08-10', 2), #Faltou uma , depois de 4100.00
('João Lima', 2800, '2023-02-20', 3), #Faltou uma , depois do '2023-02-20'
('Fernanda Alves', 3200, '2024-01-15', 4); #3200 estava entre aspas simples

-- consulta
SELECT * FROM funcionarios #Estava escrito FORM