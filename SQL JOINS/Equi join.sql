-- Performing Equi Join

-- A join operation that retrieves rows from two tables by comparing specified columns (Primary key and foreign key) using an equality (=) operator.
use tech_ecoomerce;
select products.product_id,products.name,  orders.customer_name
from products ,orders
where products.product_id=orders.product_id;

-- Thus basically you select the desired columns you want on the basis of equality of a single column.