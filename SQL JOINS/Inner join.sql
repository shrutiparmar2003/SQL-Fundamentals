-- Inner Join 
-- Returns common records from both the tables

select products.name, products.category, orders.customer_name
from products
inner join orders
on products.product_id=orders.product_id;