--🟢 Easy-Level Tasks (7)
--1.Return: OrderID, CustomerName, OrderDate
--Task: Show all orders placed after 2022 along with the names of the customers who placed them.
--Tables Used: Orders, Customers
select concat(cus.FirstName, ' ', cus.LastName) as cus_name, ord.OrderDate, ord.OrderID from Customers as cus
left join Orders as ord on cus.CustomerID=ord.CustomerID
where ord.OrderDate>'2022-12-31'
--Return: EmployeeName, DepartmentName
--2.Task: Display the names of employees who work in either the Sales or Marketing department.
--Tables Used: Employees, Departments
select emp.Name,dep.DepartmentName from Employees as emp
 left join Departments as dep on emp.DepartmentID=dep.DepartmentID 
 where dep.DepartmentName in('Sales','Marketing')

--Return: DepartmentName, MaxSalary
--3.Task: Show the highest salary for each department.
--Tables Used: Departments, Employees
select dep.DepartmentName, max(emp.Salary) as max_salary from Employees as emp join Departments as dep on dep.DepartmentID=emp.DepartmentID
group by  dep.DepartmentName 
order by  max(emp.Salary)desc

--Return: CustomerName, OrderID, OrderDate
--4.Task: List all customers from the USA who placed orders in the year 2023.
--Tables Used: Customers, Orders
select concat(cus.FirstName, ' ', cus.LastName) as cus_name, ord.OrderID, ord.OrderDate  from Customers as cus join 
 Orders as ord on cus.CustomerID=ord.CustomerID
where ord.OrderDate between '2023-01-01' and '2023-12-31' and cus.Country='USA'

--Return: CustomerName, TotalOrders
--5.Task: Show how many orders each customer has placed.
--Tables Used: Orders , Customers
select concat(cus.FirstName, ' ', cus.LastName) as cus_name, sum(ord.Quantity) as totalOrders from Customers as cus join 
 Orders as ord on cus.CustomerID=ord.CustomerID
 group by cus.FirstName, cus.LastName 
--Return: ProductName, SupplierName
--6.Task: Display the names of products that are supplied by either Gadget Supplies or Clothing Mart.
--Tables Used: Products, Suppliers
select s.SupplierName, p.ProductName from Suppliers as s join Products as p on s.SupplierID=p.SupplierID 
where s.SupplierName in('Clothing Mart' ,'Gadget Suppliers');
--Return: CustomerName, MostRecentOrderDate
--7.Task: For each customer, show their most recent order. Include customers who haven't placed any orders.
--Tables Used: Customers, Orders
select  concat(cus.FirstName, ' ', cus.LastName ) as cus_name, 
max(ord.OrderDate)as MostRecentOrderDate from Customers as cus
left join Orders as ord on cus.CustomerID=ord.CustomerID
group by  concat(cus.FirstName, ' ', cus.LastName ) 

-- Medium-Level Tasks (6)
--Return: CustomerName, OrderTotal
--8.Task: Show the customers who have placed an order where the total amount is greater than 500.
--Tables Used: Orders, Customers
select concat(c.FirstName, ' ', c.LastName)as cusName, o.TotalAmount from Customers as c left join Orders as o on c.CustomerID=o.CustomerID
where o.TotalAmount>=500
--Return: ProductName, SaleDate, SaleAmount
--9.Task: List product sales where the sale was made in 2022 or the sale amount exceeded 400.
--Tables Used: Products, Sales
select p.ProductName, s.SaleDate, s.SaleAmount from Products as p
  join Sales as s on p.ProductID=s.ProductID
  where year (s.SaleDate)=2022 or s.SaleAmount>400
--Return: ProductName, TotalSalesAmount
--10.Task: Display each product along with the total amount it has been sold for.
--Tables Used: Sales, Products
  select p.ProductName, sum(s.SaleAmount) as TotalSalesAmount from Sales as s
left join Products as p on s.ProductID=p.ProductID
group by p.ProductName
--Return: EmployeeName, DepartmentName, Salary
--11.Task: Show the employees who work in the HR department and earn a salary greater than 60000.
--Tables Used: Employees, Departments
select e.Name,d.DepartmentName, e.Salary from Departments as d  left join Employees as e 
on d.DepartmentID=e.DepartmentID
where d.DepartmentName='Human Resources' and e.Salary>60000;
--Return: ProductName, SaleDate, StockQuantity
--12.Task: List the products that were sold in 2023 and had more than 100 units in stock at the time.
--Tables Used: Products, Sales
select p.ProductName, s.SaleDate, p.StockQuantity from Products as p left join Sales as s 
on p.ProductID=s.ProductID
where year(s.SaleDate)=2023 and p.StockQuantity>=100
--Return: EmployeeName, DepartmentName, HireDate
--13.Task: Show employees who either work in the Sales department or were hired after 2020.
--Tables Used: Employees, Departments
select e.Name,d.DepartmentName, e.HireDate from Employees as e left join Departments as d on d.DepartmentID=e.DepartmentID
where year (e.HireDate)>2020 or d.DepartmentName='Sales'
