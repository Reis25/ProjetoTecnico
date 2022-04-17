-- 
select * from base

select * from carro_cliente

select * from carro_montadora

select * from cliente

select * from idiomas

select * from montadora

select * from pais

select * from profissao

select * from cliente where codigo_pais='BR';

select primeiro_nome, ultimo_nome, sexo, etnia
from cliente
where sexo='FEMALE' and etnia='Eskimo'

select primeiro_nome, nascimento, ultimo_nome
from cliente
where(nascimento between '1980-01-01' and '1990-12-31') and (sexo ='female')

select primeiro_nome, ultimo_nome, id_profissao from cliente 
where id_profissao in (91, 151, 191)

select * from 