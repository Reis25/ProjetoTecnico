
-- TCL: TRANSACTION CONTROL LANGUAGE

-- ✓BEGIN TRANSACTION – Inicia uma transação.
BEGIN TRANSACTION

-- ✓COMMIT – salvar o trabalho feito
COMMIT

-- ✓SAVE TRANSACTION – identificar um ponto em uma transação para que mais tarde você pode efetuar um ROLLBACK
SAVE TRANSACTION

-- ✓ROLLBACK – restaurar banco de dados ao original desde o último COMMIT
ROLLBACK 
