				----		Exercices E070		----

use Northwind2019 

----(1)
--select ProductID, ProductName
--from Products
--where SupplierID in
--(select SupplierID from Suppliers where CompanyName = 'Pavlova, ltd.')

----(2)
--select SUM(Quantity) 'Nbr of Tofu sold' 
--from [Order Details] 
--where ProductID in (select ProductID from Products where ProductName = 'Tofu')

----(3)
--select count(OrderDate) 'Nbr of orders'
--from Orders
--where EmployeeID 
--in (select EmployeeID from Employees where FirstName = 'Robert' and LastName = 'King')
--and OrderDate between '2017/05/01' and '2017/05/31'

----(4)
--select ProductID , ProductName , UnitsOnOrder
--from Products
--where CategoryID 
--in (select CategoryID from Categories where CategoryName = 'Confections') 
--and UnitsOnOrder != 0

----(5)
--select ProductName
--from Products
--where CurrentUnitPrice 
--in (select CurrentUnitPrice from Products where ProductName = 'Chang')
--and ProductName != 'Chang'

----(6)
--select ProductName , CurrentUnitPrice
--from Products
--where CurrentUnitPrice > (select CurrentUnitPrice from Products where ProductName = 'Tofu')

----(7)
-- select CompanyName
-- from Customers
-- where CustomerID
--in ( select CustomerID from orders group by CustomerID having COUNT(OrderDate) > 15 )

----(8)
--select LastName
--from Employees
--where HireDate 
--in
--(select max(HireDate) from Employees) 

----(9)
--select ProductName
--from Products
--where ProductID 
--not in (select ProductID from [Order Details])

----(10)
--select OrderID , ProductID ,  (1 - Discount)*Quantity*UnitPrice 'Omzet'
--from [Order Details]
--where OrderID in (select top 3 OrderID from [Order Details] group by OrderID order by max((1 - Discount)*Quantity*UnitPrice) desc)


----(11)
--select City , CompanyName
--from Customers
--where City 
--in (select top 1 City from Customers group by City order by COUNT(City) desc)

----(12)
--select ProductName
--from Products
--where ProductID
--in (select top 1 ProductID from [Order Details] group by ProductID order by max(UnitPrice) desc)

----(13)
--select ProductName from Products where ProductID 
--in (select ProductID from [Order Details] group by ProductID having COUNT(OrderID) > 50)

----(14)
--select CompanyName
--from Customers
--where CustomerID
--not in (select CustomerID from Orders group by CustomerID)

