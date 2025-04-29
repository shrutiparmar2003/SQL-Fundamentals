
-- First_Value() over
-- Returns the first value of the first row of the window according to the order by
-- ORDER BY decides which value is "first."
-- If you change the order, the first value changes

use school;

select name,subject, score, 
first_value(score) over( order by score desc  )
from student; 

select name,subject, score, 
first_value(score) over(partition by subject order by score desc )
from student; 
-- Returns first value of each window that has been partitoned by subject

select name,subject, score, 
first_value(name) over(
partition by subject 
order by score desc 
 ) as top_scorer
from student; 