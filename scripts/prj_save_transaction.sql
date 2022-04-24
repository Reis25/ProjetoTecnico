----------------------------------
-- TCL: SAVE TRANSACTION
----------------------------------
SELECT * FROM Jogadores

BEGIN TRANSACTION 

INSERT INTO Jogadores VALUES ('Mikael', 'Peso', 'M', 'Brasileiro')

SAVE TRANSACTION V01

INSERT INTO Jogadores VALUES ('Mell', 'Game', 'F', 'Russa')

SAVE TRANSACTION V02

INSERT INTO Jogadores VALUES ('Fábio', 'FF', 'M', 'Koreano')

SAVE TRANSACTION V03

SELECT * FROM Jogadores

COMMIT TRANSACTION 

-- ROLLBACK TRANSACTION V02

-- ROLLBACK TRANSACTION V01

-- ROLLBACK TRANSACTION V03

ROLLBACK

