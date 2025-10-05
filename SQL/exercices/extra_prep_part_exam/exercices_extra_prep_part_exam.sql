				----		Exercices Voorbereiding deelexamen		----
use Northwind2019 
----(1) en (2)
--select count(DATEDIFF(DAY,RequiredDate,ShippedDate)) 'Aantal orders op tijd'
--from Orders
--where DATEDIFF(DAY,RequiredDate,ShippedDate) <= 0

--select count(DATEDIFF(DAY,RequiredDate,ShippedDate)) 'Aantal orders te laat tijd'
--from Orders
--where DATEDIFF(DAY,RequiredDate,ShippedDate) > 0

--select DATEPART(YEAR,RequiredDate) as Jaar , CustomerID , Avg(DATEDIFF(DAY,RequiredDate,ShippedDate)) as 'Gemiddeld aantal dagen te laat'
--from Orders
--group by DATEPART(YEAR,RequiredDate), CustomerID
--having Avg(DATEDIFF(DAY,RequiredDate,ShippedDate)) < 0
--order by CustomerID asc

----(3)
--select ProductName 
--from Products 
--where CurrentUnitPrice > 
--(select AVG(CurrentUnitPrice) from Products)
--order by ProductName asc

----(4)
--select ProductName , (CurrentUnitPrice - (select AVG(CurrentUnitPrice) from Products))
--from Products
--where (CurrentUnitPrice - (select AVG(CurrentUnitPrice) from Products)) > 50
--or (CurrentUnitPrice - (select AVG(CurrentUnitPrice) from Products)) < 0
--order by (CurrentUnitPrice - (select AVG(CurrentUnitPrice) from Products)) desc

----(5)
--select CustomerID , OrderID , DATEDIFF(DAY,RequiredDate,ShippedDate)
--from Orders
--where DATEDIFF(DAY,RequiredDate,ShippedDate) in
--(select distinct top 3 DATEDIFF(DAY,RequiredDate,ShippedDate) from orders order by 1 desc )  
--order by DATEDIFF(DAY,RequiredDate,ShippedDate) asc

----(6)
--select OrderID , ((MAX(UnitPrice*Quantity*(1 - Discount)) - min(UnitPrice*Quantity*(1 - Discount)))) 'verschil', (min(UnitPrice*Quantity*(1 - Discount))) 'min Omzet', (MAX(UnitPrice*Quantity*(1 - Discount))) 'max Omzet'
--from [Order Details]
--where UnitPrice*Quantity*(1 - Discount) > 2000
--group by OrderID
--having (MAX(UnitPrice*Quantity*(1 - Discount)) - min(UnitPrice*Quantity*(1 - Discount))) > 100 
--and   COUNT(ProductID) > 1
--order by OrderID desc

----(7)
--select ProductName , CurrentUnitPrice
--from Products
--where CurrentUnitPrice between ((select AVG(CurrentUnitPrice) from Products)-(select AVG(CurrentUnitPrice) from Products)*0.1)
--and ((select AVG(CurrentUnitPrice) from Products)+(select AVG(CurrentUnitPrice) from Products)*0.1)

----(8)
--select City
--from Customers
--group by City
--having COUNT(CustomerID) = (select top 1 COUNT(CustomerID) from Customers group by City order by COUNT(CustomerID))

----(9)
--select CompanyName , City
--from Customers
--where City in 
--(select City from Customers group by City having COUNT(CustomerID) = (select top 1 COUNT(CustomerID) from Customers group by City order by COUNT(CustomerID)) )

----(10)
--select OrderID,
--		 EmployeeID,
--		 datediff(DAY,OrderDate,ShippedDate) as 'Aantal dagen tussen bestelling en levering',
--		 DATEDIFF(DAY,(select AVG(datediff(DAY,OrderDate,ShippedDate)) from Orders),
--		 DATEDIFF(DAY,OrderDate,ShippedDate)) as 'Verschil tot gemiddelde'
--from Orders
--where DATEDIFF(DAY,OrderDate,ShippedDate) > 30
--order by EmployeeID asc

----(11)
--select OrderID,
--		 EmployeeID,
--		 DATEDIFF(DAY,OrderDate,ShippedDate) as 'Aantal dagen tussen bestelling en levering',
--		 DATEDIFF(DAY,(select AVG(datediff(DAY,OrderDate,ShippedDate)) from Orders),
--		 DATEDIFF(DAY,OrderDate,ShippedDate)) as 'Verschil tot gemiddelde'
--from Orders
--where datediff(DAY,OrderDate,ShippedDate) in 
--									(
--									 select top 1 max(datediff(DAY,OrderDate,ShippedDate)) 
--									 from Orders 
--									 group by DATEDIFF(DAY,OrderDate,ShippedDate)
--									 having DATEDIFF(DAY,OrderDate,ShippedDate) = max(DATEDIFF(DAY,OrderDate,ShippedDate))
--									 order by DATEDIFF(DAY,OrderDate,ShippedDate) desc
--									)

----(12)
--select ProductID
--from Products
--where ProductID in (select ProductID from [Order Details] where Discount < (select AVG(Discount) from [Order Details]) group by ProductID)
--and ProductID in (select ProductID from Products where CurrentUnitPrice > (select AVG(CurrentUnitPrice) from Products))
--order by ProductID