CREATE DATABASE papelaria; # Estava faltando o A do DATABASE e o ;

USE papelaria; #Faltou o ; no final

-- Criar tabela produtos
CREATE TABLE produtos (
id INT PRIMARY KEY AUTO_INCREMENT, #Faltou uma , no final
nome VARCHAR(50), #Faltou o () entre o VARCHAR e o 50
preco DECIMAL(10,2), #Faltou a , depois do (10.2) e entre o própro, tambem precisava tirar o S do DECIMAL
quantidade INT,
ativo BOOLEAN #Estava com , e faltava o EAN do BOOLEAN
);

-- Inserir registros
INSERT INTO produtos (nome, preco, quantidade, ativo) #Faltou 2 , e o s do produtos
VALUES 
('Caneta Azul', 2.50, 100, TRUE), # 1 , estava no lugar errado e faltava outra virgula
('Lápis', 1.20, 200, TRUE),
('Caderno', 15.00, 50, TRUE), #Eatava faltando o TRUE
('Borracha', 0.5, 300, TRUE); #Eatava faltando o TRUE

-- Consultar dados
SELECT nome, preco FROM produtos #Faltou uma ,

