 -- DCL:
/*
GRANT  -> Atribui privilégios de acesso do usuário a objetos do banco de dados.
REVOKE -> Remove os privéligos de acesso dos objetos obtidos com o GRANT;
DENY   -> Nega permissão a um usuário ou grupo para realizar operação em 
objeto ou recurso.
 */

EXEC master.dbo.sp_addlogin  'Mell' ,'senhaTeste';

EXEC sp_grantdbaccess 'Mell';

SETUSER 'Mell'
select CURRENT_USER

SETUSER

-- Concedendo o acesso de leitura para o usuário:
GRANT SELECT ON JOGADORES TO Mell; 

-- Concedendo o acesso de INSERT para o usuário:
GRANT INSERT ON JOGADORES TO Mell; 

-- Concedendo o acesso de Atualização para o usuário:
GRANT UPDATE ON JOGADORES TO Mell; 

-- Concedendo o acesso de DELETAR para o usuário:
GRANT DELETE ON JOGADORES TO Mell; 

-- Tirando o acesso de leitura para o usuário:
REVOKE SELECT ON JOGADORES TO Mell; 

-- Tirando o acesso de INSERT para o usuário:
REVOKE INSERT ON JOGADORES TO Mell; 

-- Tirando o acesso de Atualização para o usuário:
REVOKE UPDATE ON JOGADORES TO Mell; 

-- Tirando o acesso de DELETAR para o usuário:
REVOKE DELETE ON JOGADORES TO Mell; 


