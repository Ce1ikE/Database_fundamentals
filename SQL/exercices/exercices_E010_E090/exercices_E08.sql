				----		Exercices E080		----
use Northwind2019 
----(1)
--select FirstName , LastName , OrderID
--from Employees
--inner join Orders
--on Employees.EmployeeID = Orders.EmployeeID
--order by FirstName,LastName

----(2)
--select FirstName , LastName , COUNT(OrderID) as 'Aantal orders'
--from Employees
--inner join Orders
--on Employees.EmployeeID = Orders.EmployeeID
--group by FirstName , LastName
--order by [Aantal orders] desc

----(3)
--select ProductName , CategoryName , CompanyName
--from Products
--inner join Categories
--on Products.CategoryID = Categories.CategoryID
--inner join Suppliers
--on Products.SupplierID = Suppliers.SupplierID
--order by ProductName

----(4)
--select CompanyName , FirstName , LastName
--from Orders
--inner join Customers
--on Orders.CustomerID = Customers.CustomerID
--inner join Employees
--on Orders.EmployeeID = Employees.EmployeeID
--order by CompanyName

----(5)
--select CompanyName , OrderID
--from Customers
--left join Orders
--on Customers.CustomerID = Orders.CustomerID
--order by OrderID asc

----(6)
--select CompanyName , COUNT(OrderID) as 'nbr_of_orders'
--from Customers
--left join Orders
--on Customers.CustomerID = Orders.CustomerID
--group by CompanyName
--order by nbr_of_orders asc

----(7)
--select FirstName , LastName ,TerritoryDescription
--from Employees
--inner join EmployeeTerritories
--on Employees.EmployeeID = EmployeeTerritories.EmployeeID
--inner join Territories
--on EmployeeTerritories.TerritoryID = Territories.TerritoryID

----(8)
--select FirstName , LastName ,count(TerritoryDescription) as 'Aantal'
--from Employees
--inner join EmployeeTerritories
--on Employees.EmployeeID = EmployeeTerritories.EmployeeID
--inner join Territories
--on EmployeeTerritories.TerritoryID = Territories.TerritoryID
--group by FirstName , LastName
--order by Aantal desc

----(9)
--select TerritoryDescription , FirstName , LastName
--from Employees
--right join EmployeeTerritories
--on Employees.EmployeeID = EmployeeTerritories.EmployeeID
--right join Territories
--on EmployeeTerritories.TerritoryID = Territories.TerritoryID 
--order by TerritoryDescription

----(10)
--select LastName , FirstName , COUNT(distinct CompanyName) as 'AantalKlanten'
--from Employees
--inner join Orders
--on Employees.EmployeeID = Orders.EmployeeID
--inner join Customers
--on Orders.CustomerID = Customers.CustomerID
--group by LastName , FirstName
--order by AantalKlanten desc

----(11)
--select distinct CompanyName
--from Products
--inner join [Order Details]
--on  (select ProductID from Products where ProductName = 'Chocolade') = [Order Details].ProductID
--inner join Orders
--on [Order Details].OrderID = Orders.OrderID
--inner join Customers
--on Orders.CustomerID = Customers.CustomerID

----(12)
--select CompanyName , COUNT(OrderID) as 'Nbr_of_orders'
--from Orders
--Left join Customers
--on Orders.CustomerID = Customers.CustomerID
--group by CompanyName
--having COUNT(OrderID) < 5
--order by Nbr_of_orders asc

----(13)
--select DATEPART(YEAR,RequiredDate) as 'YearRequiredDate' , AVG(DATEDIFF(day,ShippedDate,RequiredDate)) as 'AvgDaysLate' , CompanyName
--from Orders
--inner join Customers
--on Orders.CustomerID = Customers.CustomerID
--where RequiredDate < ShippedDate
--group by DATEPART(YEAR,RequiredDate) , CompanyName
--having DATEPART(YEAR,RequiredDate) = 2018
--order by YearRequiredDate asc , AvgDaysLate asc 

----(14)
--select CompanyName ,min(UnitPrice*Quantity*(1-Discount)) as 'Omzet' , COUNT(distinct ProductID) as 'Aantal'
--from Customers
--inner join Orders
--on  Customers.CustomerID = Orders.CustomerID
--inner join [Order Details]
--on Orders.OrderID = [Order Details].OrderID
--where DATEPART(YEAR,ShippedDate) = '2016' and DATEPART(MONTH,ShippedDate) = '11'
--group by CompanyName

----(15)
--select  ProductName ,min(UnitPrice) as 'minimal_price' ,max(CurrentUnitPrice) as 'Maximal_price'
--from Products
--inner join [Order Details]
--on Products.ProductID = [Order Details].ProductID
--group by ProductName 
--having MAX(UnitPrice) > MIN(UnitPrice) * 1.07 
--order by ProductName

----(16)
--select  ProductName ,min(UnitPrice) as 'minimal_price' ,max(CurrentUnitPrice) as 'Maximal_price'
--from Products
--inner join [Order Details]
--on Products.ProductID = [Order Details].ProductID
--group by ProductName 
--having MAX(UnitPrice) > MIN(UnitPrice) * 1.05 
--order by ProductName

----(17)
--select distinct CompanyName
--from Shippers
--inner join Orders
--on Shippers.ShipperID = 
--(select ShipVia from Orders where DATEDIFF(DAY,RequiredDate,ShippedDate) = (select max(DATEDIFF(DAY,RequiredDate,ShippedDate)) from orders ))

----(18)
--select CompanyName , AVG(Freight) as 'AvgFreight'
--from Customers
--left join Orders
--on Customers.CustomerID  = Orders.CustomerID
--group by CompanyName
--having avg(Freight) > 100 or AVG(Freight) is null
--order by AVG(Freight)