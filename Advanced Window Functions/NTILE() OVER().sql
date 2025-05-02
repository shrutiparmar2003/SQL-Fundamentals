-- NTILE() OVER()
-- Divides the result set into n groups as equally as possible by assigning number to each group based on the condistions specified in the order by clause

use school; 

select student_id, name, score ,
ntile(2) over(order by score desc) as percentile_group
from student;

-- Here I am dividing the students into 2 groups based on their scores in descending fashion. 
-- Instead of 2 , 3 can also be written to divide students into 3 groups.

select student_id, name, score , subject,
ntile(3) over(partition by subject order by score desc) as percentile_group
from student;

