select * from person.Person

select LastName, FirstName, MiddleName 
from person.Person 
where MiddleName IS not null

select FirstName, LastName from person.Person
where exists (
select * from HumanResources.Employee
where BusinessEntityID = BusinessEntityID
and LastName ='Johnson')

select * from Sales.Store
select * from Purchasing.Vendor

select DISTINCT s.name 
from sales.Store as s
where exists
(select * 
from Purchasing.Vendor as v
where s.name = v.name);


