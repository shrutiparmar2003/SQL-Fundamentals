show databases;
use tech_ecommerce;
show tables;
select*from products;

-- sql aliases : used to give a temporary column name to a coulmn in table.
select Name as "product name"
from products;

select name as "product name", brand as "product brand"
from products;



