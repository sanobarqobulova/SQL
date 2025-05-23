--1.Using Products, Suppliers table List all combinations of product names and supplier names.
select Products.ProductID, Suppliers.SupplierID, Products.ProductName, Suppliers.SupplierName
from Products
inner join Suppliers on Products.ProductID= Suppliers.SupplierID

--2.Using Departments, Employees table Get all combinations of departments and employees.
select Departments.DepartmentID, Employees.EmployeeID, Departments.DepartmentName, Employees.Name
from Departments
inner join Employees on Departments.DepartmentID=Employees.EmployeeID

--3.Using Products, Suppliers table List only the combinations where the supplier actually supplies the product. Return supplier name and product name
select  Products.ProductName, Suppliers.SupplierName
from Products
inner join Suppliers on Products.ProductID=Suppliers.SupplierID

--4.Using Orders, Customers table List customer names and their orders ID.
select Orders.OrderID, Customers.FirstName,LastName
from Orders
inner join Customers on Customers.CustomerID=Orders.CustomerID

--5.Using Courses, Students table Get all combinations of students and courses.
 select s.name as StudentName, s.Major, c.CourseName
from Students s
cross join Courses c;   

--6.Using Products, Orders table Get product names and orders where product IDs match.
select Products.ProductName,Orders.OrderID
from Orders
inner join Products on Products.ProductID=Orders.ProductID


--7.Using Departments, Employees table List employees whose DepartmentID matches the department.
select Departments.[DepartmentName], Employees.[Name]
from Employees
 join Departments on Departments.DepartmentID=Employees.EmployeeID
 

select * from Departments
select * from Employees
--8.Using Students, Enrollments table List student names and their enrolled course IDs.
select st.studentID, st.Name, Enrollments.EnrollmentID, st.Major from Students as st
inner join Enrollments on st.StudentID=Enrollments.StudentID

--9.Using Payments, Orders table List all orders that have matching payments.
select pay.paymentID, pay.Amount from Payments as pay
inner join Orders as ord on pay.Amount=ord.TotalAmount

--10.Using Orders, Products table Show orders where product price is more than 100.
select * from Orders as ord
inner join Products as pr on ord.TotalAmount=pr.Price
where Price>100

--11.Using Employees, Departments table List employee names and department names where department IDs are not equal. It means: Show all mismatched employee-department combinations.
select Employees.Name, Employees.DepartmentID, Departments.DepartmentName from Employees
inner join Departments on Employees.DepartmentID<>Departments.DepartmentID

--12.Using Orders, Products table Show orders where ordered quantity is greater than stock quantity.
select Orders.OrderID, Orders.Quantity, Products.ProductName, Products.StockQuantity
from Orders
inner join Products on Orders.ProductID=Products.ProductID
where Products.StockQuantity<Orders.OrderID

--13.Using Customers, Sales table List customer names and product IDs where sale amount is 500 or more.
select c.FirstName, c.LastName, c.CustomerID, s.SaleID, s.SaleAmount
from Customers as c
inner join Sales as s on   c.CustomerID=s.SaleID
where SaleAmount>500

--14.Using Courses, Enrollments, Students table List student names and course names they’re enrolled in.

SELECT s.Name AS StudentName, c.CourseName
FROM Enrollments e
INNER JOIN Students s ON e.StudentID = s.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID;

--15.Using Products, Suppliers table List product and supplier names where supplier name contains “Tech”.
select Products.ProductName, Suppliers.SupplierName, Products.ProductID, Suppliers.SupplierID
from Products
inner join Suppliers on Suppliers.SupplierID=Products.ProductID
where SupplierName like'Tech%';

--16.Using Orders, Payments table Show orders where payment amount is less than total amount.
select Orders.TotalAmount, Payments.Amount
from Orders 
inner join Payments on Orders.TotalAmount>Payments.Amount

--17.Using Employees and Departments tables, get the Department Name for each employee.
select Employees.EmployeeID, Employees.Name, Departments.DepartmentID, Departments.DepartmentName 
from Employees
inner join Departments on Departments.DepartmentID=Employees.DepartmentID

--18.Using Products, Categories table Show products where category is either 'Electronics' or 'Furniture'.
select Products.ProductID, Products.ProductName, Categories.CategoryID, Categories.CategoryName 
from Products cross join Categories
where Categories.CategoryName='Electronics' or Categories.CategoryName='Furniture'

--19.Using Sales, Customers table Show all sales from customers who are from 'USA'.
select Sales.SaleID, Customers.CustomerID, Customers.FirstName, Customers.LastName, Customers.Country from Customers
inner join Sales on Customers.CustomerID=Sales.CustomerID
where Customers.Country='USA'

--20.Using Orders, Customers table List orders made by customers from 'Germany' and order total > 100.
select Orders.OrderID, Orders.TotalAmount, Customers.CustomerID, Customers.Country from Orders
inner join Customers on Customers.CustomerID=Orders.CustomerID
where Customers.Country='Germany' and Orders.TotalAmount>100;
