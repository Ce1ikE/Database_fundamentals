				----		Exercices E050		----

use Northwind2019 

----(1)
--select Title , MIN(HireDate) FirstEmployed
--from Employees
--group by Title

----(2)
--select ProductID , avg(UnitPrice) AvgUnitPrice , avg(Quantity) AvgQuantity
--from [Order Details]
--group by ProductID

----(3)
--select Country , COUNT(Country) NbrSuppliers
--from Suppliers
--where Country = 'USA' or Country = 'Japan'
--group by Country
--order by Country Desc

----(4)
--select City, COUNT(*) NbrEmployees 
--from Employees
--group by City
--having COUNT(*)>1

----(5)
--select CategoryID , max(CurrentUnitPrice) 'MAXprice' , min(CurrentUnitPrice) 'Minprice'
--from Products
--group by CategoryID
--order by CategoryID

----(6)
--select CategoryID , avg(UnitsInStock) 'AvgUnitInStock'
--from Products
--where CurrentUnitPrice > 10
--group by CategoryID
--having avg(UnitsInStock) > 40


----(7)
--select CustomerID , COUNT(OrderID) 'Nbr of orders'  
--from Orders
--group by CustomerID
--having COUNT(OrderID) >= 10 
--order by 'Nbr of orders' desc

----(8)
--select top 3 CustomerID ,COUNT(OrderID) 'Nbr of orders'  
--from Orders
--group by CustomerID
--having COUNT(OrderID) >= 10 
--order by 'Nbr of orders' desc

----(9)
--select OrderDate , COUNT(OrderID) 'Nbr of orders'
--from Orders
--where OrderDate between  '2016/01/01' and '2016/12/31'
--group by OrderDate
--having COUNT(OrderID) > 1

----(10)
--select top 1 DATEname(MONTH,OrderDate) 'top month' , COUNT(OrderID) 'Nbr of orders'
--from Orders
--where OrderDate between  '2018/01/01' and '2018/12/31'
--group by DATEname(MONTH,OrderDate)
--order by 'Nbr of orders' desc