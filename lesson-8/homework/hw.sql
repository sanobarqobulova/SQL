
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

--12.Using Products and Products_Discounted table, Combine all product names from Products and Products_Discounted without duplicates.
select ProductName
from Products
union 
select ProductName
from Products_Discounted as Products

--13.Using Orders table, find the average order amount by year.
select year(OrderDate) as each_year,
avg(TotalAmount) as avg_order
from Orders
group by year (OrderDate)
select * from Orders
  
--14.Using Products table, group products based on price: 'Low' (<100), 'Mid' (100-500), 'High' (>500).Return productname and pricegroup.
select ProductName as category_pr,
case 
when Price<100 then 'Low'
when Price between 100 and 500 then 'Mid'
else 'High'
end as status_pr
from Products 
group by ProductName, Price
  
--15.Using City_Population table, use Pivot to show values of Year column in seperate columns ([2012], [2013]) and copy results to a new Population_Each_Year table.
select district_name,[2012], [2013]  from City_Population
pivot(
sum(population) for year in ([2012], [2013])
)
as values_of_year;

--16.Using Sales table, find total sales per product Id.
select ProductID, sum(SaleAmount) as total_sale
from Sales
group by ProductID

--17.Using Products table, use wildcard to find products that contain 'oo' in the name. Return productname.
select ProductName from Products
where ProductName like '%oo%'

--18.Using City_Population table, use Pivot to show values of City column in seperate columns (Bektemir, Chilonzor, Yakkasaroy) and copy results to a new Population_Each_City table.
select [Bektemir], [Chilonzor], [Yakkasaroy] into Population_Each_City from City_Population
pivot(
sum(population) for district_name in ([Bektemir], [Chilonzor], [Yakkasaroy])
)
as Population_Each_City
--select * from Population_Each_City

--19.Using Invoices table, show top 3 customers with the highest total invoice amount. Return CustomerID and Totalspent.
SELECT TOP 3 *
FROM Invoices
WHERE TotalAmount>=600.00
