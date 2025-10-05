				----		scalaire functies Exercices			----
use Northwind2019 
----(1)
--select POWER(10,2)

----(2)
--select sqrt(55)

----(3)
 
----(a) 
--select ceiling(sqrt(55))

----(b)
--select floor(sqrt(55))

----(c)
--select round(SQRT(55),2)


----(4)
--select 'code:'+CustomerID+',name:'+upper(CompanyName)
--from Customers

----(5)
--select LastName , replace(Title,'Vice President','Big Boss') 
--from Employees
 
----(6)
--select LOWER(SUBSTRING(FirstName,1,1)) as 'first letter', len(FirstName) as 'length name'
--from Employees

----(7)
--select DATEdiff(DAY,'2002/10/28',getdate()) as 'dagen oud', DATEdiff(MONTH,'2002/10/28',getdate()) as 'maanden oud',DATEdiff(YEAR,'2002/10/28',getdate()) as 'jaren oud'

----(8)
--select DATEADD(DAY,14,GETDATE())

----(9)
--select DATEADD(QUARTER,1,GETDATE())

----(10) !!!!!!
--select LastName
--from Employees
--where (LastName not like('a%') and LastName not like('%a') and LastName not like('_a%'))

----(11)
--select CompanyName , IIF(ContactTitle like('%Sales%'),'Sales','Other function')
--from Customers