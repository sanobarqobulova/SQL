
--1.Using Products table, find the total number of products available in each category.
select Category,
sum(StockQuantity) from Products
group by Category

--2.Using Products table, get the average price of products in the 'Electronics' category.
select avg(Price) as avg_pr from Products 
where Category='Electronics'
select * from Products
  
--3.Using Customers table, list all customers from cities that start with 'L'.
select * 
from Customers
where City like 'L%'

--4.Using Products table, get all product names that end with 'er'.
select * 
from Products
where ProductName like '%er'

--5.Using Customers table, list all customers from countries ending in 'A'.
select * 
from Customers
where Country like '%A'

--6.Using Products table, show the highest price among all products.
select max(Price) as max_pr from Products
select * from Products

--7.Using Products table, label stock as 'Low Stock' if quantity < 30, else 'Sufficient'.
select *, 
case
when StockQuantity<30 then 'Low Stock'
else 'Sufficient' 
end 
from Products;

--8.Using Customers table, find the total number of customers in each country.
select Country, count(CustomerId) as total_cust
from Customers
group by Country

--9.Using Orders table, find the minimum and maximum quantity ordered.
select max(Quantity) as max_quant,
 min(Quantity)  as min_quant
from Orders
--10.--

  
--11.Using c and Products_Discounted table, Combine all product names from c and Products_Discounted including duplicates.
select ProductName
from Products
union all
select ProductName
from Products_Discounted as all_products;
