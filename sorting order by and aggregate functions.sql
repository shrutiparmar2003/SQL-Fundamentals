-- Sorting in SQL: ORDER BY (used to sort data in ascending or descending order)

select * from products 
order by price;  -- sorts in ascending order

select * from products 
order by price desc;

-- AGGREGATE FUNCTIONS
-- MAX
select max(price)from products;

-- MIN
select min(price)from products;

-- SUM 
select sum(price)from products;

-- AVG 
select avg(price) from products;

-- Count : returns the number of non null values in that column
select count(*) from products;
select count(name) from products;