-- count()
/*🧮 COUNT(*) OVER() = How many rows?
  🧮 COUNT(*) OVER(ORDER BY col) = How many rows so far after sorting?
  🤝 Same values (tie) = Group them before counting next.*/

select name , score,
count(*) over ()
from student;

select name , score,
count(*) over (order by score)
from student;
-- in this case take for example we are moving down the rows. 
--  1st row -> score=85 -> count= wait lemme check the next row's score [yeah its diff] , count =1;
--  2nd row -> score=90 -> count= wait lemme check the next row's score [yeah its diff] , count =2;
--  3rd row -> score=87 -> count= wait lemme check the next row's score [its same] , count = 4;   3rd and 4th row grouped and assigned count 4
--  4th row -> score=87 -> count= wait lemme check the next row's score [yeah its diff] , count =4;
--  5th row -> score=100 -> count= end , count =5;
