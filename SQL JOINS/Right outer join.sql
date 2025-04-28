-- Right Outer Join 
-- Right outer join returns all the records from the right table and common records from the left and right table..if somehow a common value is not found then null is filled in that place.

use tech_ecommerce;
SELECT 
    products.product_id,
    products.Name,
    orders.order_id,
    orders.customer_name
FROM 
    products
RIGHT OUTER JOIN orders                            -- Left table is products , right table is orders
    ON products.product_id = orders.product_id;
