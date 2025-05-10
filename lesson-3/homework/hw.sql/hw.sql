--Use BULK INSERT to import data from a text file into the Products table.

Create table products (id int, name varchar(40), category varchar(40), price decimal, matter varchar(20), StockQuantity int)
	select * from products
	bulk insert class_3.dbo.products
from 'D:\products-2.csv'
with(
firstrow=1,
fieldterminator=',',
rowterminator='\n')

select * from products

--Create a FOREIGN KEY in the Products table that references the Categories table.

	select * from categories
	select * from products

CREATE TABLE categories (
    categoriesID int not null primary key,
   categoryNumber int not null unique,
   price int,
   matter varchar(20),
   stockquantity int,
   stock int,
   products_id int foreign key references products(id))
  
   insert into categories(categoriesID, categoryNumber, price, matter, stockquantity,  stock)
   values (1, 59, 20, ('unknown'), 56, 1),
   (2, 32, 27, 'fresh', 7, 0),
   (3, 13, 13, 'good', 8, 3)

  --Explain the differences between PRIMARY KEY and UNIQUE KEY.
  --Ensures that all values are unique, PRIMARY KEY-one per table.  Use case-used to uniquely identify each row (e.g., ID)
 -- Per table-You can have multiple, UNIQUE keys. Use case-used to enforce uniqueness on other fields (e.g., Email, Username)

 --Add a CHECK constraint to the Products table ensuring Price > 0.
 alter table products
add constraint price check (price>=18);

--Modify the Products table to add a column Stock (INT, NOT NULL).

alter table products
add stock int not null default 7;

--Use the ISNULL function to replace NULL values in Price column with a 0.
select price, isnull(price, 0) as price
from products;


--Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
--A FOREIGN KEY in SQL server is used to enforce relationships between two tables — it ensures that the value in one table must exist in another.
