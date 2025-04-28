/*Left outer Join : 
Left Table = Always fully included ✅
Right Table = Included only if matched, else NULL ❌
Left Outer Join returns all records from the left table, and the matched records from the right table.
If there is no match, the result is NULL on the side of the right table.*/

use tech_ecommerce;
SELECT 
    products.product_id,
    products.Name,
    orders.order_id,
    orders.customer_name
FROM 
    products
LEFT OUTER JOIN orders                            -- Left table is products , right table is orders
    ON products.product_id = orders.product_id;
    
-- In left outer join all the records from the left table and common records between left and right table are displayed.
-- If no value cannot be find then it is filled with NULL 