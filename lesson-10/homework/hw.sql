--1.Using the Employees and Departments tables, write a query to return the names and salaries of employees whose salary is greater than 50000, along with their department names.
--🔁 Expected Columns: EmployeeName, Salary, DepartmentName
select emp.Name, emp.Salary, dep.DepartmentName
from Employees as emp 
inner join Departments as dep on emp.DepartmentID=dep.DepartmentID
where emp.Salary>50000;

--2.Using the Customers and Orders tables, write a query to display customer names and order dates for orders placed in the year 2023.
--🔁 Expected Columns: FirstName, LastName, OrderDate
select cus.FirstName,LastName, ord.OrderDate
from Customers as cus
join Orders as ord on cus.CustomerID=ord.CustomerID
where OrderDate between '2023-01-01' and  '2023-12-31';

--3.Using the Employees and Departments tables, write a query to show all employees along with their department names. Include employees who do not belong to any department.
--🔁 Expected Columns: EmployeeName, DepartmentName
select emp.Name, dep.DepartmentName 
from Employees as emp left join Departments as dep on emp.DepartmentID=dep.DepartmentID

--4.Using the Products and Suppliers tables, write a query to list all suppliers and the products they supply. 
--Show suppliers even if they don’t supply any product.
--🔁 Expected Columns: SupplierName, ProductName
select sup.SupplierName, p.ProductName from Suppliers as sup 
 left join Products as p on p.ProductID=sup.SupplierID;

--5.Using the Orders and Payments tables, write a query to return all orders and their corresponding payments. Include orders without payments and payments not linked to any order.
--🔁 Expected Columns: OrderID, OrderDate, PaymentDate, Amount
select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount from Orders as o 
left join Payments as p on o.OrderID=p.OrderID;

--6.Using the Employees table, write a query to show each employee's name along with the name of their manager.
-- Expected Columns: EmployeeName, ManagerName
select emp.Name, emp.ManagerID
from Employees as emp left join Employees on  emp.EmployeeID=emp.ManagerID

--7.Using the Students, Courses, and Enrollments tables, write a query to list the names of students who are enrolled in the course named 'Math 101'.
--🔁 Expected Columns: StudentName, CourseName
select c.CourseName, Students.Name from Courses as c
cross join Students 
 join Enrollments as e on e.StudentID=e.CourseID
 where c.CourseName='Math 101'

--8.Using the Customers and Orders tables, write a query to find customers who have placed an order with more than 3 items. Return their name and the quantity they ordered.
--🔁 Expected Columns: FirstName, LastName, Quantity
select c.FirstName, c.LastName, o.Quantity from Customers as c join Orders as o on c.CustomerID=o.CustomerID
where Quantity>3;

--9.Using the Employees and Departments tables, write a query to list employees working in the 'Human Resources' department.
-- Expected Columns: EmployeeName, DepartmentName
select emp.Name, dep.DepartmentName from Employees as emp left join Departments as dep on emp.DepartmentID=dep.DepartmentID
where DepartmentName='Human Resources';

--10.Using the Employees and Departments tables, write a query to return department names that have more than 5 employees.
--🔁 Expected Columns: DepartmentName, EmployeeCount
select dep.DepartmentName, count(emp.EmployeeID) as employeeCount from Employees as emp 
inner join Departments as dep on emp.DepartmentID=dep.DepartmentID
group by dep.DepartmentName
having count (emp.EmployeeID)>5;

--11.Using the Products and Sales tables, write a query to find products that have never been sold.
--🔁 Expected Columns: ProductID, ProductName
select p.ProductID, p.ProductName from Products as p left join Sales as s on p.ProductID=s.ProductID
where SaleID is null

--12.Using the Customers and Orders tables, write a query to return customer names who have placed at least one order.
--🔁 Expected Columns: FirstName, LastName, TotalOrders
select cus.CustomerID,cus.FirstName, cus.LastName, ord.TotalAmount from Customers as cus left join Orders as ord on cus.CustomerID=ord.CustomerID
where ord.ProductID is not null

--13.Using the Employees and Departments tables, write a query to show only those records where both employee and department exist 
--(no NULLs).
--🔁 Expected Columns: EmployeeName, DepartmentName
select emp.Name, dep.DepartmentName from Employees as emp join Departments as dep on emp.DepartmentID=dep.DepartmentID;

--14.Using the Employees table, write a query to find pairs of employees who report to the same manager.
--🔁 Expected Columns: Employee1, Employee2, ManagerID
select
	e1.Name as employee1,
	e2.Name as employee2, e1.ManagerID
from Employees e1 join Employees e2 on e1.ManagerID=e2.ManagerID
and e1.EmployeeID<e2.EmployeeID
where e1.ManagerID is not null;

--15.Using the Orders and Customers tables, write a query to list all orders placed in 2022 along with the customer name.
--🔁 Expected Columns: OrderID, OrderDate, FirstName, LastName
select cus.FirstName, cus.LastName, ord.OrderDate from Customers as cus 
join Orders as ord on cus.CustomerID=ord.CustomerID
where ord.OrderDate between '2022-01-01' and '2022-12-31'

--16.Using the Employees and Departments tables, write a query to return employees from the 'Sales' department whose salary is 
--above 60000.
--🔁 Expected Columns: EmployeeName, Salary, DepartmentName
select Employees.Name, Departments.DepartmentName, Employees.Salary from Employees inner join Departments on Employees.DepartmentID=Departments.DepartmentID
where Employees.Salary>60000

--17.Using the Orders and Payments tables, write a query to return only those orders that have a corresponding payment.
--🔁 Expected Columns: OrderID, OrderDate, PaymentDate, Amount
select ord.OrderID, ord.OrderDate, pay.PaymentDate, pay.Amount from Orders as ord join Payments as pay on ord.OrderID=pay.OrderID

--18.Using the Products and Orders tables, write a query to find products that were never ordered.
--🔁 Expected Columns: ProductID, ProductName
select p.ProductName, o.ProductID from Products as p left join Orders as o on p.ProductID=o.ProductID
where o.ProductID is null
