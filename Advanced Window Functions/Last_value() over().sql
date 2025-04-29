-- Last_value() over() 
-- Returns the  

select name,subject, score, 
last_value(name) over ( 
partition by subject order by score desc
rows between unbounded preceding and unbounded following ) 
as lowest_scorers
from student;

-- Explanation:
-- Without specifying ROWS BETWEEN, last_value() only observes from first to current row.
-- So, at the first row, the lowest scorer may wrongly seem like the first person itself.
-- As it moves row-by-row, it keeps updating among seen rows only.
-- Specifying "unbounded preceding to unbounded following" ensures it looks at the full window.
-- Now it properly returns the lowest scorer for the subject.