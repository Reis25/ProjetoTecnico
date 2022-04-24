- Inicia uma Transação:
BEGIN TRANSACTION; 

INSERT INTO Jogadores VALUES
						('Firmino', 'Atacante', 'M', 'Brasileiro'),
						('Hortencia', 'Ala-pivo', 'F', 'Brasileira'), 
						('Serena Williams', 'Tenista', 'F', 'Estados Unidenses'),
						('Magic Paula', 'Ala-armadora', 'F', 'Brasileira'); 



SELECT * FROM Jogadores

ROLLBACK

---------------------------------

BEGIN TRANSACTION; 

INSERT INTO Jogadores VALUES
						('kobe braynt', 'Atacante', 'M', 'Brasileiro'),
						('Lebron James', 'Ala-pivo', 'F', 'Brasileira'), 
						('Mjordan', 'Tenista', 'F', 'Estados Unidenses'),
						('Magic Johnson', 'Ala-armadora', 'F', 'Brasileira'); 

COMMIT TRANSACTION; 
 
INSERT INTO Jogadores VALUES
						('Firmino', 'Atacante', 'M', 'Brasileiro'),
						('Hortencia', 'Ala-pivo', 'F', 'Brasileira'), 
						('Serena Williams', 'Tenista', 'F', 'Estados Unidenses'),
						('Magic Paula', 'Ala-armadora', 'F', 'Brasileira'); 
SELECT * FROM Jogadores

ROLLBACK
