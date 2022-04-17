create table f_prod (
id_nf int, 
id_item int, 
cod_prod int, 
valor_unit float, 
quantidade int, 
desconto int
); 

insert into f_prod (id_nf, id_item, cod_prod, valor_unit, quantidade, desconto)
values (1, 1, 1, 25, 10, 5),
	   (1, 2, 2, 13.50, 3, null ),
	   (1, 3, 3, 15, 2, null),
	   (1, 4, 4, 10, 1, null),
	   (1, 5, 5, 30, 1, null),
	   (2, 2, 3, 15, 4, null),
	   (2, 3, 4, 10, 5, null),
	   (2, 1, 5, 30, 7, null),
	   (3, 2, 1, 25, 5, null),
	   (3, 3, 4, 10, 4, null),
	   (3, 4, 5, 30, 5, null),
	   (3, 1, 2, 13.50, 7, null),
	   (4, 2, 5, 30, 10, 15 ),
	   (4, 3, 4, 10, 12,5 ),
	   (4, 4, 1, 25, 13, 5),
	   (4, 1, 2, 13.50, 15, 5),
	   (5, 2, 3, 15, 3, null),
	   (5, 1, 5, 30, 6, null),
	   (6, 2, 1, 25, 22, 15),
	   (6, 1, 3, 15, 25, 20),
	   (7, 2, 1, 25, 10, 3),
	   (7, 3, 2, 13.50, 10, 4),
	   (7, 4, 3, 15, 10, 4),
	   (7, 4, 5, 30, 10, 1)

select * from f_prod