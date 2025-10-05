				----		Exercices E030		----
use Northwind2019 
----(1)
--select CustomerID , CompanyName , ContactName , ContactTitle , Address 
--from Customers 
--where (Country ='Germany'or Country ='France') 
--and ContactTitle like('Sales%')


----(2)
--select City , Region , PostalCode , Country , Phone , Fax 
--from Customers 
--where (Country ='Germany'or Country ='France') 
--and ContactTitle like('Sales%')

----(3)
--select LastName , Title , TitleOfCourtesy 
--from Employees 
--where (TitleOfCourtesy ='Mr.' and Title ='Sales Manager')
--or ((TitleOfCourtesy ='Ms.'or TitleOfCourtesy ='Mrs.') and Title ='Sales Representative')

----(4)
--select CompanyName , ContactName 
--from Customers 
--where ContactName like('A%')
--or ContactName like('%A')

----(5)
--select CompanyName , Fax , Phone 
--from Customers 
--where fax is null
--or Phone is null

----(6)
--select *
--from Products 
--where  ProductName in('Chai','Konbu','Tofu')

----(7)
--select o.ShippedDate , o.ShipName 
--from Orders o
--where ShippedDate between '2016/09/08' and '2016/10/09'

----(8)
--select ProductName , QuantityPerUnit , UnitsInStock 
--from Products 
--where (UnitsInStock > 10)
--and (QuantityPerUnit like '10%' or QuantityPerUnit like '32%')
