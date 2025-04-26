-- HAVING CLAUSE 
-- To sepcify a condtion with group by , having clause is used. Thus if any aggregate dunction is to be used after the from clause in a select command, then instead of using where clause , having clause is used.
use tech_ecommerce;

select category, count(*) as count 
from products
group by category
having count =2;

select brand , count(*) as count_of_brand 
from products
group by brand
having brand='DELL';


