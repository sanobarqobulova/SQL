--Advanced-Level Tasks (9)
	--Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)
	Create table products (ID int primary key, name varchar(30), category varchar(30), price decimal, matter varchar (10))
	select * from products
	--Add a CHECK constraint to ensure Price is always greater than 0.
	alter table products
	add check(price>=0)
	--Modify the table to add a StockQuantity column with a DEFAULT value of 50.
	alter table products
	add stockquantium int default(50)
	--Rename Category to ProductCategory
	alter table Products
	EXEC sp_rename 'Products.Category','ProductCategory', 'column';
	select * from products
	--Insert 5 records into the Products table using standard INSERT INTO queries.
	insert into products (ID , name , ProductCategory, price, matter)values 
	(1, 'apple', 'fruit', 20.4, 'good'), 
	(2, 'cucumber', 'vegetable', 52.0, 'good'),
	(3, 'banana', 'fruit', 27.2, 'good'),
	(4, 'onion', 'vegetable', 32.3, 'not good'),
	(5, 'tomato', 'vegetable', 43.5, 'good');
	--Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
	select * into products_backup
	from products
	select * from products
	select * from products_backup
	--Rename the Products table to Inventory.
	alter table products
	exec sp_rename 'products', 'inventory'
	
	select * from inventory
	select * from products_backup
	--Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.

								
--1.ALTER TABLE Inventory
DROP CONSTRAINT CK__products__price__6C190EBB;

-- 2.Change column type (float, nullable)
ALTER TABLE Inventory
ALTER COLUMN Price FLOAT NULL;

-- 3.Re-add constraint correctly
ALTER TABLE Inventory
ADD CONSTRAINT CK_Inventory_Price CHECK (Price >= 0);  
	

	--Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.
	CREATE TABLE Inventory_New (
    ProductCode INT IDENTITY(1000, 5) PRIMARY KEY,
    Name VARCHAR(40),
    ProductCategory VARCHAR(40),
    Price FLOAT,
    Matter VARCHAR(10)
);

INSERT INTO Inventory (Name, ProductCategory, Price, Matter)
SELECT Name, ProductCategory, Price, Matter
FROM Inventory;
	drop table Inventory
	exec sp_rename 'Inventory_New', 'Inventory';
