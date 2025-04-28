-- avg() 
/* AVG() OVER()	            -One single average for the entire table.
   AVG() OVER(ORDER BY...)	-Row-by-row running average, ordered by score. Because ORDER BY changes the window frame → SQL now thinks "let's compute based on how the rows are ordered!"*/

select name, score,
avg(score) over() as avgscore
from student;

select name, score,
avg(score) over(order by score desc) as avgscore
from student;

select name, score, subject,
avg(score) over(partition by subject) as avgscore
from student;   -- here we have obtained the average of each subject

select name, score ,subject,
avg(score) over(
ORDER BY score DESC
  ROWS BETWEEN 1 PRECEDING AND CURRENT ROW     -- Look at yourself and one friend standing just before you — average your marks!
) AS moving_avg
FROM student;




