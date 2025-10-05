				----		Execices E060		----   !! use 'Ctrl' + 'shift' + 'R' to Refresh Local Cache !!
use Northwind2019 
----(1)
--drop table Products2
--select * into Products2
--from Products

----(2)
--drop table Orders2
--select * into Orders2
--from Orders

----(3)
--delete from Orders2
--where ShipCountry = 'Belgium'

----(4) 
--drop table Foodstuffs
--select ProductName , CurrentUnitPrice
--into Foodstuffs
--from Products
--where CategoryID = '8' or CategoryID = '1'

----(5)
--insert into Foodstuffs (ProductName , CurrentUnitPrice)
--select ProductName , CurrentUnitPrice
--from Products
--where CategoryID = '2'

----(6)
--update Orders2
--set ShippedDate = Dateadd(day, 10,ShippedDate) 
--where OrderDate between '2017/08/01' and '2017/08/31'

----(7)
--drop table Employees2
--select *
--into Employees2
--from Employees
--alter table Employees2
--add salary int

----(8)
--update Employees2
--set salary = 60.00

----(9)
--update Employees2
--set salary = (salary*0.2)+salary
--where Title = 'Sales Manager'

----(10)
--update Employees2
--set salary = salary - (salary*0.9) 
--where FirstName = 'Anne' and LastName = 'Dodsworth'

----(11)
--insert into Foodstuffs (ProductName , CurrentUnitPrice)
--values ('meatballs' , 12)

----(12)
--insert into Orders2 (CustomerID,EmployeeID,Orderdate,Requireddate )
--values ('ANATR',3,'2018/10/30','2018/11/30')

----(13)
--update Products2
--set CurrentUnitPrice = CurrentUnitPrice*10 + CurrentUnitPrice
