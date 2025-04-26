-- Sql special operators
-- conditions based on BETWEEN ..AND
Select name, brand ,price from products
where price between 700 AND 1000;

-- Not between
Select name ,price,brand from products
where price not between 700 and 1000;

-- Conditions based on a List -IN : To specify a list of values IN operator is used.
Select*from products 
where brand in('dell','domes');

Select product_id from products
where name in ('wireless_mouse','keyboard','notebook');

Select product_id from products
where name not in ('wireless_mouse','keyboard','notebook');

select*from products where product_id=1;

-- CONDITIONS BASED ON PATTERN - LIKE (using wild cards : 1. percent[%]  2.underscore[_])
select *from products where brand like "D%";  -- This selects all the coulns whose brand names start with D.

select*from products where brand like "%l"; -- This selects all columns from table where the brand name ends with L

select *from products where name like "_e%";  -- selects all columns where second place of product name is e