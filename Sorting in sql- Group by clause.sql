-- SORTING BY GROUP BY 
/*GROUP BY is used in SQL when you want to put similar rows together based on one or more columns — like grouping all items of the same type — and then do something with each group, like counting them, adding up numbers, or finding the biggest/smallest value.

It’s like sorting things into boxes, then asking,
"How many in each box?" or "What's the total in this box?"*/

use tech_ecommerce;
show tables;
select*from products;

select max(name) , category,count(*) as count
from products
group by category;
select*from products;

select category, count(*) as count 
from products
group by category;