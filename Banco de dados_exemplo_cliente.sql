create database Luana;
use Luana;

CREATE TABLE cliente (		
	id INT,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade TINYINT,
    data_nascimento DATE,
    hora_cadastro TIME,
    data_hora_registro DATETIME,
    ativo TINYINT,
    genero ENUM('Masculino', 'Feminino', 'Outro'),
    saldo DECIMAL(10,2)
);

INSERT INTO cliente(
	id, nome, email, idade, data_nascimento, hora_cadastro, data_hora_registro, ativo, genero, saldo
) VALUES (
	1, 'Luiza Augusta', 'luizaAugusta123@gmail.com', 37, '1989-05-13', '01,00,00', '2019-07-13 14:30:00',
    TRUE, 'Feminino', 1500.60
);

SELECT * from cliente;
SELECT nome, email, idade FROM cliente;
    
    