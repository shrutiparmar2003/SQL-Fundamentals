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