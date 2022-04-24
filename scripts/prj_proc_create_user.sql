EXEC atletas.dbo.sp_helprotect 
    @username = 'Mell'  

EXEC master.dbo.sp_addlogin  'RobertoCarlos' ,'Carlinhos';

EXEC sp_grantdbaccess 'RobertoCarlos';

SETUSER 'RobertoCarlos'
select CURRENT_USER

EXEC atletas.dbo.sp_helprotect 
    @username = 'RobertoCarlos'  

SETUSER
-- Última parte DCL: DENY
-- Negando Acessso de atualização para o usuário: 
DENY UPDATE ON Jogadores TO RobertoCarlos

UPDATE Jogadores
SET Jogador = 'Didira' 
WHERE ID = 1

