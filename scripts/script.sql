-- scripts sql:

-- Visualizando as bases de dados: 

select * from regiao

select * from senso

select * from uf

-- ----------------------
-- Observando nome dos municípios do estado de alagoas: 

select nome_mun from senso where uf='AL'

-- Observando os atributos de um município chamando 'Novo Lino'

select * from senso where nome_mun ='novo lino'

-- Estudando operadores lógicos: 
-- Buscando os campos uf, cod_uf, populacao da tabela senso onde a uf é igual a: AL E a população é maior que 5000 habitantes. 
select uf, cod_uf, populacao from senso where uf = 'AL' AND populacao >= 5000

select * from senso where populacao >= 1000000

-- Observando todos os municípios execeto os de São Paulo: 

SELECT* FROM senso WHERE uf<>'SP'
