show databases;   -- This shows all the databases in the system
CREATE DATABASE tech_ecommerce;  -- This command creates a new database
USE tech_ecommerce; -- This is for opening  an existing database

CREATE TABLE products(
product_id INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(255) NOT NULL,
category VARCHAR(255) NOT NULL,
price decimal(10,2) NOT NULL,
stock_quantity INT NOT NULL,
brand VARCHAR(255) NOT NULL
 
);

-- we will list all tables
show tables;
describe products;  -- Viewing a table structure  

INSERT INTO products (product_id,Name,category,price,stock_quantity,brand) VALUES
(1, 'Water_Bottle', 'Miscellaneous', 700, 5, 'Milton'),
(2, 'Wireless_Mouse', 'Electronics', 899, 10, 'DELL'),
(3, 'Keyboard', 'Electronics',1000,10,'HP'),
(4, 'Notebook', 'Stationary',40,30, 'TrueNote');

SELECT*FROM products; -- Viewing this table;

-- Updating values in a table
UPDATE products
SET Brand= 'DELL'
WHERE product_id=3;
select*from products;

UPDATE products
SET brand='Domes' , price=45
where product_id=4;
select*from products;

Update products
SET price=price+100
WHERE (product_id=1 or product_id=2);
select*from products;
