use tec_info_teste; 

-- DML: 

-- Comando Create: 

-- CREATE DATABASE;
CREATE DATABASE tec_info_teste; 

-- CREATE table; 
CREATE TABLE alunos(
	ID int identity(1,1) NOT NULL PRIMARY KEY, 
	NOME VARCHAR(50) NOT NULL, 
	curso VARCHAR(30) NOT NULL,
	salario_bolsa DECIMAL(10, 2), 
	sexo char(1) NOT NULL,
	
	CONSTRAINT CH_sexo CHECK (sexo IN ('M','F')),

);

-- DML: usando o Insert: 

-- Insert com especificação de campos 
INSERT INTO alunos (nome, curso, salario_bolsa, sexo) 
VALUES ('Lionel Messi', 'Boleiro', 5500000, 'M'); 

-- Insert sem especificação de campos 
INSERT INTO alunos  
VALUES ('Ronaldo Nazário', 'Atacante', 3000000, 'M'); 

-- Insert múltiplos: 
INSERT INTO alunos VALUES
 ('Marta', 'Atacante', 8000000, 'F'),
 ('Formiga', 'Atacante', 6000000, 'F'), 
 ('Cristiane', 'Atacante', 7000000, 'F'), 
 ('Fabi', 'Atacante', 4000000, 'F'); 

 -- DML UPDATE: 

 -- update: 
 UPDATE alunos 
 SET curso = 'Ponta-Direita'
 WHERE ID = 7;

 UPDATE alunos 
 SET curso = 'Lateral'
 WHERE ID = 9;

 UPDATE alunos 
 SET curso = 'Atacante'
 WHERE ID =1;


 -- DML: DELETE
 DELETE FROM alunos WHERE ID = 5; 

 DELETE FROM alunos WHERE ID > 7; 

