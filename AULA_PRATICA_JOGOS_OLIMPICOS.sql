CREATE DATABASE JOGOS_OLIMPICOS
USE JOGOS_OLIMPICOS

BEGIN TRANSACTION

CREATE TABLE USUARIO (

Id_Usuario INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
Nome_Usuario VARCHAR(100),
EMAIL VARCHAR(100),
SENHA VARCHAR(100) UNIQUE

);

SAVE TRANSACTION CREATE_USUARIO;


CREATE TABLE VOLUNTARIOS (

Id_Voluntarios INT NOT NULL PRIMARY KEY IDENTITY(11,11),
Nomes_Voluntarios VARCHAR(100),
EMAIL VARCHAR(100),
SENHA VARCHAR(100) UNIQUE

);

SAVE TRANSACTION CREATE_VOLUNTARIOS;

CREATE TABLE CARGOS_VOLUNTARIOS(

Id_Cargo_voluntarios INT NOT NULL PRIMARY KEY IDENTITY(10,10), 
Id_VoluntariosCARG INT NOT NULL UNIQUE,
Nome_Cargo_Voluntarios VARCHAR(50)

FOREIGN KEY (Id_VoluntariosCARG) REFERENCES VOLUNTARIOS (Id_Voluntarios),

);

SAVE TRANSACTION CREATE_CARGOS_V;

CREATE TABLE CARGOS_USUARIO (

Id_Cargo INT NOT NULL PRIMARY KEY IDENTITY(2,2),
Id_Usuario INT NOT NULL UNIQUE,
Nome_Cargo VARCHAR(50)

FOREIGN KEY (Id_Usuario) REFERENCES USUARIO (Id_Usuario)

);


SAVE TRANSACTION CREATE_CARGOS;

CREATE TABLE Ingressos (

Id_Ingresso INT NOT NULL PRIMARY KEY IDENTITY(3,3),
Id_Usuario INT NOT NULL UNIQUE ,
Endereco VARCHAR(300),
Data_Compra DATE,
Tipo_Ingresso VARCHAR(100),
QTD_Ingresso INT,

FOREIGN KEY (Id_Usuario) REFERENCES USUARIO (Id_Usuario)

);

SAVE TRANSACTION CREATE_Ingressos;

CREATE TABLE VOTACAO(

Id_Votos INT NOT NULL PRIMARY KEY IDENTITY(4,4),
Id_UsuarioVOT INT NOT NULL UNIQUE ,
QTD_Voto INT,

FOREIGN KEY (Id_UsuarioVOT) REFERENCES USUARIO (Id_Usuario)

);

SAVE TRANSACTION CREATE_VOTACAO;

CREATE TABLE DELEGACAO(

Id_Delegacao INT NOT NULL PRIMARY KEY IDENTITY(5,5),
Id_Cargo INT NOT NULL UNIQUE ,
Id_VotosDEL INT NOT NULL UNIQUE ,
Nome_Delegacao varchar(100),
Nacionalidade Varchar(100),
Nome_Competidores VARCHAR(100),
Data_Jogos DATE,
Tipo_Competicao VARCHAR(50)

FOREIGN KEY (Id_Cargo) REFERENCES CARGOS_USUARIO (Id_Cargo),
FOREIGN KEY (Id_VotosDEL) REFERENCES VOTACAO (Id_Votos)

);

SAVE TRANSACTION CREATE_DELEGACAO;

CREATE TABLE BEBIDAS_ALIMENTOS(

ID_BEB_ALIME INT NOT NULL PRIMARY KEY IDENTITY(6,6),
ID_Usuario INT NOT NULL UNIQUE ,
Id_Delegacao_COMIDA INT NOT NULL UNIQUE ,
Tipo_Alimento VARCHAR(50),
QTD_Vendido INT

FOREIGN KEY (Id_Usuario) REFERENCES USUARIO (Id_Usuario),
FOREIGN KEY (Id_Delegacao_COMIDA) REFERENCES DELEGACAO (Id_Delegacao)


);

SAVE TRANSACTION CREATE_ALIMENTOS;

CREATE TABLE EQUIPAMENTOS_ESPORTIVOS(

ID_Equip_Esport INT NOT NULL PRIMARY KEY IDENTITY(7,7),
Id_Delegacao INT NOT NULL UNIQUE ,
Tipo_Equip VARCHAR(50),
QTD_Equip INT

FOREIGN KEY (Id_Delegacao) REFERENCES DELEGACAO (Id_Delegacao)

);

SAVE TRANSACTION CREATE_EQUIPAMENTOS_ESPORTIVOS;

COMMIT TRANSACTION

BEGIN TRANSACTION

INSERT INTO USUARIO VALUES ('maxwell','maxwell_raynor41@gmail.com','WIkTW_Hh2IUmr3y'),
                           ('leonardo','leonardo85@gmail.com','d4c2S6PtcNrRTLq'),
						   ('manuela','manuela.hand2@gmail.com','iFGsgXLpZ0Ezcai'),
						   ('enrique','enrique70@gmail.com','9clrQLIyztxuzat');

SAVE TRANSACTION INSERT_USUARIO;

INSERT INTO Ingressos VALUES (1,'Rua Antônio Morais','20-05-2018','Natação',1),
                             (2,'Rua José Felipe do Amaral','15-05-2018','Ginástica',2),
							 (3,'Rua Mariápolis','16-05-2018','Ginástica',1),
							 (4,'Avenida Doutor Asdrubal Augusto do Nascimento Netto','19-05-2018','Ciclismo',1);

SAVE TRANSACTION INSERT_INGRESSOS;


INSERT INTO VOLUNTARIOS VALUES ('isabel','isabel_mitchell@gmail.com','BtyHvyc9MTt1ssr'),
                               ('leopoldo','leopoldo_kutch58@yahoo.com','CRBQfhCN85fz98G'),
							   ('jerald','jerald78@hotmail.com','1HdkWW20FATDwI9'),
							   ('angelica','angelica86@hotmail.com','OdmZADW5p5_tmGo');

SAVE TRANSACTION INSERT_VOLUNTARIOS;

INSERT INTO CARGOS_VOLUNTARIOS VALUES (11,'MÉDICO'),						 
						  (22,'MÉDICO'),
						  (33,'DIRETOR'),
						  (44,'GESTOR');

SAVE TRANSACTION INSERT_CARGOS_V;

INSERT INTO CARGOS_USUARIO VALUES (1,'USUARIO PADRÃO'),						 
						  (2,'USUARIO PADRÃO'),
						  (3,'USUARIO PADRÃO'),
						  (4,'USUARIO PADRÃO');

SAVE TRANSACTION INSERT_CARGOS_U;

INSERT INTO VOTACAO VALUES (4,50),						 
						  (2,30),
						  (1,15),
						  (3,60);

SAVE TRANSACTION INSERT_VOTACAO;

INSERT INTO DELEGACAO VALUES (2,12,'BRASIL','BRASILEIRO(A)','FERNANDO SCHEFFER','14-06-2018','NATAÇÃO'),						 
						  (4,8,'CANADÁ','CANADENSE','ELLIE BLACK','15-06-2018','GINÁSTICA'),
						  (6,16,'JAPÃO','JAPONESA','KOHEI UCHIMURA','16-06-2018','GINÁSTICA'),
						  (8,4,'EUA','ESTADUNIDENSE','JENNIFER VALENTE','20-06-2018','CICLISMO');

SAVE TRANSACTION INSERT_DELEGACAO;

INSERT INTO bebidas_alimentos VALUES (2,5,'HAMBURGUER',3),						 
						  (4,10,'CERVEJA',50),
						  (1,15,'REFRIGERENTE',4),
						  (3,20,'PASTEL',2);

SAVE TRANSACTION INSERT_alimentos;

INSERT INTO equipamentos_esportivos VALUES (15,'CAVALO',2),						 
						  (10,'BARRAS',5),
						  (20,'BICICLETA',30),
						  (5,'TOUCA NATAÇÃO',100);

SAVE TRANSACTION INSERT_equipamentos;

COMMIT TRANSACTION

-- COMANDOS DE CONSULTA

SELECT * FROM INGRESSOS
SELECT * FROM USUARIO
SELECT * FROM CARGOS_USUARIO
SELECT * FROM CARGOS_VOLUNTARIOS
SELECT * FROM votacao
SELECT * FROM voluntarios
SELECT * FROM delegacao
SELECT * FROM equipamentos_esportivos
SELECT * FROM bebidas_alimentos

-- COMANDO PARA EXCLUSÃO DE TABELA

DROP TABLE Ingressos

-- COMANDO PARA EXCLUSÃO DE DADOS DE UMA TABELA

DELETE FROM dbo.VOLUNTARIOS WHERE Id_Voluntarios = 33

-- COMANDO PARA ALTERAÇÃO DE TABELA/COLUNAS

ALTER TABLE INGRESSOS ADD EXEMPLO_COLUNA DATETIME;

ALTER TABLE INGRESSOS DROP COLUMN DATA_COMPRA;

ALTER TABLE INGRESSOS ALTER COLUMN QTD_INGRESSO VARCHAR(100);

-- ALTERAÇÃO DE CONTEÚDOS DE TABELAS

UPDATE USUARIO SET Id_Usuario = 6 WHERE Id_Usuario = 4;

UPDATE USUARIO SET Nome_Usuario = 'MURILO DOS SANTOS' WHERE Id_Usuario = 1;

-- ELABORANDO VIEWS PARA RANQUEAMENTO DOS UNIFORMES  


SELECT Nome_Usuario, QTD_Voto FROM USUARIO INNER JOIN VOTACAO ON Id_Usuario = Id_UsuarioVOT
 
CREATE VIEW VIEW_RANK AS SELECT A.Nome_Usuario, V.QTD_Voto,  D.[Nome_Delegacao] FROM DELEGACAO AS D   INNER JOIN VOTACAO AS V  ON Id_VotosDEL = Id_Votos INNER JOIN USUARIO AS A  ON Id_Usuario = Id_UsuarioVOT;

SELECT *  FROM  [VIEW_RANK] ORDER BY QTD_Voto DESC -- ORDER BY FILTRO DE CONSULTA /Elaborar (consultas/views) que consolidam informações relevantes

DROP VIEW VIEW_RANK

-- OPERADORES (RELACIONAIS,LÓGICOS, ARITMÉTICOS E OPERADORES SQL)

SELECT SUM(QTD_Voto)AS TOTAL_VOTOS ,AVG(QTD_Vendido) AS MEDIA_VENDIDA_ALI  FROM VOTACAO,BEBIDAS_ALIMENTOS

SELECT * FROM DELEGACAO WHERE Nome_Delegacao = 'BRASIL' OR Nome_Delegacao = 'CANADÁ'

-- Elaborar consultas/views que Identifica quantos ingressos foi vendido em todo o evento.

SELECT SUM(qtd_ingresso) AS TotalVendido_EVENTO FROM Ingressos

-- Elaborar consultas/views que Identificar quantos ingressos foi vendido por dia

SELECT QTD_INGRESSO,DATA_COMPRA,Day(Data_Compra) AS DiaVenda FROM ingressos   

-- Elaborar consultas/views que Identificar quais jogos aconteceu no dia

SELECT Nome_Delegacao,Tipo_Competicao,Day(Data_Jogos) AS DiaJogo FROM DELEGACAO   

-- Consultas/views que Identificar em qual jogo teve mais consumo de bebida e alimentos

SELECT MAX(QTD_Vendido) AS MAIOR,Tipo_Competicao,Tipo_Alimento FROM DELEGACAO INNER JOIN BEBIDAS_ALIMENTOS ON Id_Delegacao_COMIDA = Id_Delegacao GROUP BY Tipo_Alimento,Tipo_Competicao ORDER BY MAIOR DESC

-- Bônus DCL

exec master.dbo.sp_addlogin 'maxwell' , 'WIkTW_Hh2IUmr3y'; -- Criando um usuário

exec master.dbo.sp_addlogin 'leonardo' , 'd4c2S6PtcNrRTLq'; 

exec master.dbo.sp_addlogin 'manuela' , 'iFGsgXLpZ0Ezcai'; 

exec master.dbo.sp_addlogin 'enrique' , '9clrQLIyztxuzat'; 


exec sp_grantdbaccess 'maxwell'; -- Dando acesso no usuário

exec sp_grantdbaccess 'leonardo'; 

exec sp_grantdbaccess 'manuela'; 

exec sp_grantdbaccess 'enrique'; 


SETUSER 'maxwell' -- Serve para logar ou deslogar um usuario

SETUSER 'leonardo'

SETUSER 'manuela'

SETUSER 'enrique'

SETUSER


SELECT CURRENT_USER -- SERVE PARA VER QUAL USUARIO ESTA LOGADO

sp_helplogins -- verificando usuarios

exec JOGOS_OLIMPICOS.dbo.sp_helprotect -- Mostrar permissões de um usuário especifico
	@username = 'maxwell'

-- CONCEDENDO O ACESSO DE LEITURA PARA O USUÁRIO:

GRANT SELECT ON delegacao TO maxwell; -- OBS: Dê o comando SETUSER para voltar para o usuario "Adminitrador", chamado de dbo, para conceder acessos.

GRANT SELECT ON delegacao TO leonardo; -- Usuario padrão somente tem acesso a consultas

GRANT SELECT ON delegacao TO manuela;

GRANT SELECT ON delegacao TO enrique;


exec master.dbo.sp_addlogin 'isabel' , 'BtyHvyc9MTt1ssr'; -- Criando um usuário voluntario

exec master.dbo.sp_addlogin 'leopoldo' , 'CRBQfhCN85fz98G';

exec master.dbo.sp_addlogin 'jerald' , '1HdkWW20FATDwI9';

exec master.dbo.sp_addlogin 'angelica' , 'OdmZADW5p5_tmGo';


exec sp_grantdbaccess 'isabel'; -- Dando acesso no usuário voluntario

exec sp_grantdbaccess 'leopoldo'; 

exec sp_grantdbaccess 'jerald'; 

exec sp_grantdbaccess 'angelica'; 


SETUSER 'isabel' -- Serve para logar ou deslogar um usuario voluntario

SETUSER 'leopoldo'

SETUSER 'jerald'

SETUSER 'angelica'

SETUSER

SELECT Nome_Cargo_Voluntarios, Nomes_Voluntarios FROM CARGOS_VOLUNTARIOS INNER JOIN VOLUNTARIOS ON Id_VoluntariosCARG = Id_Voluntarios

GRANT SELECT,INSERT ON delegacao TO isabel; -- MÉDICO

GRANT SELECT,INSERT ON delegacao TO leopoldo; -- MÉDICO 

GRANT INSERT,ALTER,UPDATE,DELETE ON delegacao TO jerald; -- DIRETOR

GRANT SELECT,INSERT,UPDATE ON delegacao TO angelica; -- GESTOR
--                            PARA MAIS ENTIDADES SO REPETIR O CODIGO E MUDAR O NOME DA TABELA
GRANT SELECT,INSERT,UPDATE ON USUARIO TO angelica; -- GESTOR

