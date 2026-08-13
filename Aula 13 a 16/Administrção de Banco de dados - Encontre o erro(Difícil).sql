-- Criação do banco
CREATE DATABASE biblioteca; #Estava faltando o A do DATABASE e o ;
USE biblioteca;

-- Tabela de livros
CREATE TABLE livros (
  id_livro INT AUTO_INCREMENT PRIMARY KEY, #Faltou uma ,
  titulo VARCHAR(80) NOT NULL,
  ano_publicacao INT, #Faltou uma ,
  preco DECIMAL(10.2), #Estava com uma , entre 0 10 e o 2
  estoque INT #Tinha uma virgula desnecessária
);

-- Tabela de autores
CREATE TABLE autor (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nome_autor VARCHAR(80) NOT NULL,
  nacionalidade VARCHAR(40)
);

-- Inserções em LIVROS (nomes e ordens inconsistentes)
INSERT INTO livros (titulo,ano_puplicacao, preco, estoque) VALUES #Estava faltando um s e tambem o ano_publicacao
('Dom Casmurro', 39.90, 12); #Estava faltando uma ,
INSERT INTO livros (titulo, ano_puplicacao, preco, estoque) VALUES #Estava escrito qtd_estoque, o preco estava escrito com ç e o ano_publicacao  estava ecrito apenas por ano
('Capitães da Areia', 1937, 45.50, 20);
INSERT INTO livros (titulo, ano_publicacao, preco, estoque ) VALUES #Estava faltando o estoque
('Vidas Secas', 1938, 49.90, 20); # O ano estava no lugar errado e tambem estava faltando o estoque
INSERT INTO livros (titulo, ano_publicacao, preco, estoque) VALUES
('Grande Sertão: Veredas', '1956', '59,90', '10'); #No estoque estava escrito 'dez', o ano_publicacao , preco tinha ''

-- Inserções em AUTORES (nome de tabela/colunas)
INSERT INTO autor (nome_autor, nacionalidade) VALUES #Estava faltando a nacionalidade, tambem estava escrito autores e estava escrito somente nome
('Machado de Assis', 'Brasil');
INSERT INTO autor (nome_autor, nacionalidade) VALUES #Estava ecrito nacionali dade
('Jorge Amado', 'Brasil');
INSERT INTO autor (nome_autor, nacionalidaded) VALUES #Estava faltando a nacionalidade
( 'Guimarães Rosa', 'Brasil' ); #Estava com uma , desnecessária e tambem a nacionalidade

-- SELECTs (nomes inconsistentes)

SELECT * FROM livros; #Estava faltando um;
SELECT * FROM autor;