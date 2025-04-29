-- Lead() Over()alter
-- Is a window function that is used to look to forward to the next row. It helps in identifying the next value in the row without needing to write complex queries.
-- It can be used when salary of employees need to be compared, or marks of students needs to be observed if they are increasing or decresing or to check whether the stock price has risen or fallen compared to prevoius day and so on.
-- Using order by in lead is a must otherwise the function will not know how to ove forward
-- You can also use partition by to specify conditions inside the over() keyword.

use school;
select name,score,
LEAD(score) over(order by score desc) as next_score
from student; 
-- This query means, look ahead to the next student's score . Order the rows by highest scores.

SELECT 
    name,
    score,
    LEAD(score, 1, 0) OVER (ORDER BY score DESC) AS next_score
FROM 
    student;
-- here lead(score 1,0 means that next scores needs to be looked into ,just 1 row ahead needs to be seen, if there is no value then instead of null, 0 should be returned)

Select name,score,
LEAD(score ,2,0) over(order by score desc) as next_score
from student;
-- here lead(score,2,0 means that the functions needs to look two rows ahead and return the next value. if there is no value it should return null)
