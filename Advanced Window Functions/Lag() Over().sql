-- Lag() Over() : is used to look behind to the prevoius row and returns the value for each row.
-- Infact that is what window functions do, instead of aggregating the results they return results across each row in the table.

select student_id,name,score,
lag(score) over(order by score desc) as previous_score
from student;
-- looks 1 row behind and returns the previous value

select student_id,name,score,
lag(score,2) over(order by score desc) as previous_score
from student;
-- means look 2 rows behind

SELECT name, score,
LAG(score) OVER (ORDER BY score DESC) AS prev_score,
score - LAG(score) OVER (ORDER BY score DESC) AS diff
FROM student;
-- Tells how much the score has changed compared to the student just above in ranking.
