				----		Execices E040		----
use Northwind2019 
----(1)
--select count(CompanyName) as 'number of customers'
--from Customers 

----(2)
--select count(Country) as 'customers from DE'
--from Customers
--where Country = 'Germany'

----(3)
--select sum(UnitsOnOrder) as 'Total on order'
--from Products

----(4)
--select avg(CurrentUnitCost)
--from Products
--where UnitsOnOrder = 0

----(5)
--select Max(Discount) as 'MaxDiscount'
--from [Order Details]

----(6)
--select round(sum(UnitPrice*(1 - Discount)*Quantity),0) as 'Turnover'
--from [Order Details]

----(7)
--select OrderID , UnitPrice , Quantity , UnitPrice*Quantity as 'Turnover'
--from [Order Details]

----(8)
--select LastName , FirstName , DATEDIFF(YEAR,BirthDate,HireDate) as 'Age Hired'
--from Employees

----(9)
--select  ProductName , CurrentUnitPrice ,CurrentUnitPrice+CurrentUnitPrice*0.02 as 'Unit Price Increase'
--from Products

----(10)
--select  ProductName , CurrentUnitPrice ,round(CurrentUnitPrice+CurrentUnitPrice*0.02,0) as 'Unit Price Increase'
--from Products 

----(11)
--select  ProductName ,round(CurrentUnitPrice+CurrentUnitPrice*0.02,0) as 'New Unit Price>50'
--from Products
--where round(CurrentUnitPrice+CurrentUnitPrice*0.02,0) > 50 

----(12)
--select COUNT(Region) as 'Nbr of regions'
--from Employees

----(13)
--select upper(left(LastName,2)+LEFT(FirstName,1)) as 'empCode'
--from Employees