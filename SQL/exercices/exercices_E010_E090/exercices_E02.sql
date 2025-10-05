				----		Exercices E020		----
use Northwind2019 
----(0)
----	1)
--select distinct UnitPrice,ProductID  
--from [Order Details] 
--where ProductID = 1


----	2)
--select CurrentUnitPrice,ProductName,ProductID   
--from Products 

----(1)
--select LastName , FirstName
--from Employees 
--where TitleOfCourtesy = 'Mr.'

----(2)
--select * 
--from Orders
--where OrderDate > '2016/07/10'

----(3)
--select *
--from Orders
--where OrderDate > '2016/07/10'
--order by CustomerID 

----(4)
--select  CompanyName
--from Customers
--where City = 'Paris'
--order by CompanyName asc

----(5)
--select LastName , Title , HireDate 
--from Employees 
--where HireDate > '2014/01/01'

----(6)
--select *
--from Orders 
--where OrderDate = '2016/10/04'
--order ID = 11285

----(7)
--select *
--from [Order Details] 
--where OrderID = '11285'

----(8)
--select LastName , FirstName 
--from Employees 
--where Region is null;

----(9)
--select CompanyName , Address , PostalCode , Country  
--from Customers 
--where PostalCode like('w%');

----(10)
--select CompanyName , Address , PostalCode pc, Country c
--from Customers 
--where PostalCode like('_[ax]%')
--order by c , pc 

----(11)
--select CompanyName 
--from Suppliers 
--where Fax is null
--order by CompanyName desc

----(12)
--select CompanyName 
--from Suppliers 
--where Fax is not null
--order by CompanyName desc