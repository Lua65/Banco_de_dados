CREATE DATABASE atividades_alter;

USE atividades_alter;

/* ============================================================
   TABELAS BASE PARA OS EXERCÍCIOS DE ALTER TABLE
   (NÃO ALTERE ESSA PARTE)
   ============================================================ */

CREATE TABLE pacientes (
    id_paciente VARCHAR(100),   -- deveria ser INT
    nome INT,                   -- deveria ser VARCHAR
    data_nascimento VARCHAR(8), -- deveria ser DATE
    altura VARCHAR(5),          -- deveria ser DECIMAL(4,2)
    peso BOOLEAN                -- deveria ser DECIMAL(5,2)
);


ALTER TABLE pacientes MODIFY COLUMN id_paciente INT;
ALTER TABLE pacientes MODIFY COLUMN nome VARCHAR(70);
ALTER TABLE pacientes MODIFY COLUMN data_nascimento DATE;
ALTER TABLE pacientes MODIFY COLUMN altura DECIMAL(4,2);
ALTER TABLE PACIENTES MODIFY COLUMN peso DECIMAL(5,2);


CREATE TABLE veiculos_empresa (
    id_veiculo TEXT,        -- deveria ser INT
    placa DATE,             -- deveria ser CHAR(7)
    modelo INT,             -- deveria ser VARCHAR
    ano VARCHAR(10),        -- deveria ser INT
    valor BOOLEAN           -- deveria ser DECIMAL(10,2)
);

ALTER TABLE veiculos_empresa MODIFY COLUMN id_veiculo INT;
ALTER TABLE veiculos_empresa MODIFY COLUMN placa CHAR(7);
ALTER TABLE veiculos_empresa MODIFY COLUMN modelo VARCHAR(45);
ALTER TABLE veiculos_empresa MODIFY COLUMN ano INT;
ALTER TABLE veiculos_empresa MODIFY COLUMN valor DECIMAL(10,2);

CREATE TABLE contas_bancarias (
    numero_conta DATE,      -- deveria ser CHAR(10)
    titular BOOLEAN,        -- deveria ser VARCHAR
    saldo VARCHAR(15),      -- deveria ser DECIMAL(10,2)
    limite INT,             -- deveria ser DECIMAL(10,2)
    ativa VARCHAR(10)       -- poderia ser BOOLEAN ou ENUM('ativa','inativa')
);

ALTER TABLE contas_bancarias MODIFY COLUMN numero_conta CHAR(10);
ALTER TABLE contas_bancarias MODIFY COLUMN titular VARCHAR(45);
ALTER TABLE contas_bancarias MODIFY COLUMN saldo DECIMAL (10,2);
ALTER TABLE contas_bancarias MODIFY COLUMN limite DECIMAL(10,2);
ALTER TABLE contas_bancarias MODIFY COLUMN ativa BOOLEAN;

CREATE TABLE turmas (
    id_turma VARCHAR(20),   -- deveria ser INT
    nome BOOLEAN,           -- deveria ser VARCHAR
    carga_horaria VARCHAR(5), -- deveria ser INT
    sala INT,
    turno INT               -- poderia ser ENUM('manhã','tarde','noite')
);

ALTER TABLE turmas MODIFY COLUMN id_turma INT;
ALTER TABLE turmas CHANGE COLUMN nome TO 
ALTER TABLE turmas MODIFY COLUMN
ALTER TABLE turmas MODIFY COLUMN
ALTER TABLE turmas MODIFY COLUMN



CREATE TABLE reservas_sala (
    id_reserva VARCHAR(50), -- deveria ser INT
    id_turma DATE,          -- deveria ser INT (FK de turmas)
    data_reserva INT,       -- deveria ser DATE
    hora_inicio VARCHAR(10),-- deveria ser TIME
    observacao BOOLEAN      -- deveria ser VARCHAR(255)
);