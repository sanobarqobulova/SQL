--Write a query to select the top 5 employees from the Employees table.

select FirstName, LastName, salary from Employees
where Salary in (select top 5 salary from Employees order by Salary desc);

--Use SELECT DISTINCT to select unique Category values from the Products table.

select distinct Category
from Products


--Write a query that filters the Products table to show products with Price > 100.
 
where Price>100

--Write a query to select all Customers whose FirstName start with 'A' using the LIKE operator.
select * from Customers
where FirstName like 'A%';


--Order the results of a Products table by Price in ascending order.
select price
from Products
order by Price asc;


--Write a query that uses the WHERE clause to filter for employees with Salary >= 60000 and Department = 'HR'.
select * from Employees
where Salary>=60000 and DepartmentName='hr';


--Use ISNULL to replace NULL values in the Email column with the text "noemail@example.com".From Employees table
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    ISNULL(Email, 'noemail@example.com') AS Email
FROM Employees;

--Write a query that shows all products with Price BETWEEN 50 AND 100.
select * from Products
where Price between 50 and 100; 


--Use SELECT DISTINCT on two columns (Category and ProductName) in the Products table.

select distinct Category, ProductName
from Products;


--After SELECT DISTINCT on two columns (Category and ProductName) Order the results by ProductName in descending order.
select distinct Category, ProductName
from Products
order by ProductName desc;
