-- Rank() over() : 
-- Rank functions assigns a rank to each row within a partition(when partition by is used) or across the entire result set(order by used)
-- If same ranks are assigned to two students have rank 1 say, then the 3rd student will be assigned rank 3 and not 2. tehrefore rank() skips the next number in case of ties


select student_id, name, score,
rank() over(order by score desc) as rank_of_student       -- Order by is used when we want ranks across the entire result set
from student;

select student_id, name, score, subject,
rank() over(partition by  subject order by score desc) as rank_of_student  -- Parttion by is used when you want to partition ranks based on something. Fo example i may need ranks subject wise..so in that case i will partion by subject and order by scores in descending order
from student;