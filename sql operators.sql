show databases;   -- This shows all the databases in the system
CREATE DATABASE tech_ecommerce;  -- This command creates a new database
USE tech_ecommerce; -- This is for opening  an existing database



-- SQL OPERATORS
-- Arithmetic:
select 5+10;
select sin(pi()/4);
select 47%5 from DUAL;

-- Relational operators 
select *from products 
where price>800;

select name , Brand ,price  from products 
where Brand like 'DELL';

-- Logical operators
-- and operator
select name ,price from products 
where brand ='domes' and product_id=4;

-- or operator
select* from products 
where product_id=1 or product_id=3;

-- NOT operator
select name from products
where not brand='dell';