--1.Write a query to find the minimum (MIN) price of a product in the Products table.
select min(Price) from Products; 


--2.Write a query to find the maximum (MAX) Salary from the Employees table.
select max(Salary) from Employees; 


--3.Write a query to count the number of rows in the Customers table.
select count(*) from Customers;

--4.Write a query to count the number of unique product categories from the Products table.
select count(distinct Category) from Products;
select * from Products;


--5.Write a query to find the total sales amount for the product with id 7 in the Sales table.
select sum(SaleAmount) as total_sales_id7 
from Sales
group by ProductId
having ProductId=7;


--6.Write a query to calculate the average age of employees in the Employees table.
select avg(age) from Employees


--7.Write a query to count the number of employees in each department.
select distinct DepartmentName, count(*) as total_dep_emp 
from Employees
group by DepartmentName;
--select * from Employees

--8.Write a query to show the minimum and maximum Price of products grouped by Category. Use products table.
select Category,
min(Price) as min_pr,
 max(Price) as max_pr 
from products
group by Category;
--select * from products


--9.Write a query to calculate the total sales per Customer in the Sales table.
select CustomerId,
sum (SaleAmount) as total_sale
 from Sales
 group by CustomerId;


--10.Write a query to filter departments having more than 5 employees from the Employees table.(DeptID is enough, if you don't have DeptName).

select DepartmentName as Department 
from Employees
group by DepartmentName
having count(*)>5;

--11.Write a query to calculate the total sales and average sales for each product category from the Sales table.
select ProductID, SaleAmount,
avg(SaleAmount) as avg_sale,
sum(SaleAmount) as sum_sale
from Sales
group by ProductID, SaleAmount;

--12.Write a query to count the number of employees from the Department HR.
select count(EmployeeID) as co_empl
from Employees
where DepartmentName='HR';
select * from Employees;

--13.Write a query that finds the highest and lowest Salary by department in the Employees table.(DeptID is enough, if you don't have DeptName).
select DEpartmentName, Salary,
max(Salary) as max_sal,
min(Salary) as min_sal
from Employees
group by  DEpartmentName, Salary;

--14.Write a query to calculate the average salary per Department.(DeptID is enough, if you don't have DeptName).
select DEpartmentName,
avg(Salary) from Employees
group by  DEpartmentName;

--15.Write a query to show the AVG salary and COUNT(*) of employees working in each department.(DeptID is enough, if you don't have DeptName).
select DEpartmentName,
avg(Salary),
count(*)
from Employees
group by  DEpartmentName;

--16.Write a query to filter product categories with an average price greater than 400.
select Category,
avg(Price) as avg_pr
from Products
group by Category
having avg(Price)>400;

--17.Write a query that calculates the total sales for each year in the Sales table.
select year(SaleDate),
sum (SaleAmount) as total_sale
 from Sales
 group by SaleDate;
