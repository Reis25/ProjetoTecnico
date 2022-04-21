-- DDL:  renomear uma coluna:
EXEC sp_RENAME 'alunos.NOME', 'Jogador', 'COLUMN'
EXEC sp_RENAME 'alunos', 'Jogadores'

 -- DDL: adiconando colunas: 
 ALTER TABLE alunos
 ADD Nacionalidade VARCHAR(30);

  UPDATE alunos 
 SET Nacionalidade = 'Brasileira'
 WHERE ID IN (6,7) ;

 UPDATE alunos 
 SET Nacionalidade = 'Portuguesa'
 WHERE ID = 3 ;

 UPDATE alunos 
 SET Nacionalidade = 'Argentino'
 WHERE ID = 1 ;

 -- Alterando o tipo de dado de uma coluna: 
 ALTER TABLE alunos
 ALTER COLUMN Posicao varchar(50); 

 -- Alterando o nome do banco de dados: 
 ALTER DATABASE tec_info_teste MODIFY NAME = atletas; 

 -- Excluindo uma coluna: 
 ALTER TABLE Jogadores
 DROP COLUMN salario_bolsa

