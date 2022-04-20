-- ALunos: Mat, nome, endereço, cidade
create database Universidade; 

use Universidade;

CREATE TABLE alunos(
	MAT NUMERIC NOT NULL,
	nome varchar(50),
	endereco varchar(50), 
	cidade varchar(50),

	PRIMARY KEY (MAT)
);

-- Disciplinas: COD_DISC, nome_disc, carga_hor
CREATE TABLE disciplinas(
	COD_DISC varchar(50) NOT NULL, 
	nome_disc varchar(50) NOT NULL, 
	carga_hor int NOT NULL,

	PRIMARY KEY (COD_DISC)
	);

-- Professores: COD_PROF, nome, endereço, cidade;
CREATE TABLE Professores(
	COD_PROF varchar(50) NOT NULL, 
	nome varchar(50) NOT NULL, 
	endereco varchar(50) NOT NULL,
	cidade varchar(50), 

	PRIMARY KEY (COD_PROF)
	);

-- Turma: COD_DISC, COD_TURMA, COD_PROF, ANO, HORARIO;
CREATE TABLE TURMA (
	COD_DISC varchar(50) NOT NULL,
	COD_TURMA varchar(50) NOT NULL, 
	COD_PROF varchar(50) NOT NULL,
	ANO int NOT NULL, 
	HORARIO datetime, 

	Constraint pk_turma PRIMARY KEY (COD_DISC, COD_TURMA, COD_PROF, ANO),
	FOREIGN key (COD_DISC) REFERENCES disciplinas(COD_DISC),
	FOREIGN key (COD_PROF) REFERENCES Professores(COD_PROF)

);

-- Histórico: MAT, COD_DISC, COD_TURMA, COD_PROF, ano, FREQUENCIA, nota
CREATE TABLE historico (
	 MAT NUMERIC NOT NULL, 
	 COD_DISC varchar(50) NOT NULL,
	 COD_TURMA varchar(50) NOT NULL, 
	 COD_PROF varchar(50) NOT NULL, 
	 ANO int NOT NULL, 
	 FREQUENCIA int, 
	 nota int,

	Constraint pk_historico PRIMARY KEY (MAT, COD_DISC,COD_TURMA, COD_PROF, ano ),
	FOREIGN key (MAT) REFERENCES alunos(MAT),
	--FOREIGN key (COD_DISC) REFERENCES disciplinas(COD_DISC),
	FOREIGN key (COD_DISC,COD_TURMA, COD_PROF, ano) REFERENCES TURMA( COD_DISC,COD_TURMA, COD_PROF, ano),
	--FOREIGN key (COD_PROF) REFERENCES Professores(COD_PROF)
	);

--ALTER TABLE historico ALTER COLUMN MAT numeric;
ALTER TABLE alunos ALTER COLUMN nome varchar(50);
ALTER TABLE disciplinas ALTER COLUMN nome_disc varchar(50);

insert into alunos values
    (2015010101, 'jose de alencar', 'RUA DAS ALMAS', 'NATAL'),
    (2015010102, 'JOÃO JOSÉ',' AVENIDA RUY CARNEIRO', 'JOÃO PESSOA'),
    (2015010103, 'MARIA JOAQUINA', 'RUA CARROSSEL',' RECIFE'),
    (2015010104, 'MARIA DAS DORES',' RUA DAS LADEIRAS',' FORTALEZA'),
    (2015010105, 'JOSUÉ CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL'),
    (2015010106, 'JOSUÉLISSON CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL');

select * from alunos

insert into disciplinas values
    ('BD', 'BANCO DE DADOS', 100),
    ('POO', 'PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS', 100),
    ('WEB', 'AUTORIA WEB', 50),
    ('ENG', 'ENGENHARIA DE SOFTWARE', 80);

	select * from disciplinas


insert into Professores values
    (212131, 'NICKERSON FERREIRA', 'RUA MANAÍRA', 'JOÃO PESSOA'),
    (122135, 'ADORILSON BEZERRA', 'AVENIDA SALGADO FILHO',' NATAL'),
    (192011, 'DIEGO OLIVEIRA', 'AVENIDA ROBERTO FREIRE', 'NATAL');
select * from Professores

insert into TURMA values
    ('BD', 1, 212131, 2015, '11:12'),
    ('BD', 2, 212131, 2015, '13:14'),
    ('POO', 1, 192011, 2015, '08:09'),
    ('WEB', 1, 192011, 2015, '07:08'),
    ('ENG', 1, 122135, 2015, '10:11');

insert into historico (MAT, COD_DISC, COD_TURMA, COD_PROF,FREQUENCIA, ANO, nota ) values
						(2015010101, 'BD',  1, 212131, 90, 2015, 10),
						(2015010102, 'BD',  2, 212131, 80, 2015, 7 ),
						(2015010103, 'POO', 1, 192011, 70, 2015, 4 ),
						(2015010104, 'WEB', 1, 192011, 60, 2015, 6 ),
						(2015010105, 'ENG', 1, 122135, 90, 2015, 2 ),
						(2015010106, 'ENG', 1, 122135, 85, 2015, 8 );

select * from historico




