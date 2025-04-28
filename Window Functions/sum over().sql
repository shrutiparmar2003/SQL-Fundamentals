-- SUM OVER() : Adds scores row by row (CUMULATIVE TOTAL)

select name, score,
sum(score) over() as running_total
from student; 

/* That third column (690) is the grand total of all students’ scores, repeated on every row. Here’s why:
The empty OVER() means “use all rows in the table as the window.”
It doesn’t collapse into one row—it simply computes the sum across the entire set, then attaches that same total to each individual row.*/

SELECT
  name,
  score,
  SUM(score) OVER (
    ORDER BY score DESC
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) AS running_total
FROM student; 

/*In this query:

"ORDER BY score DESC" sorts the rows by score in descending order, so the row with the highest score is processed first.
For each row, the "current row" is simply the row in the result set that’s being processed at that moment.*/

/*For the first row (Hannah):
Current row = Hannah (score = 95).
The window includes all rows from the top to this row (Hannah’s row).
The running total for Hannah is just 95.

For the second row (Bob):
Current row = Bob (score = 92).
The window includes all rows from the top to this row (Hannah and Bob).
The running total for Bob is 95 + 92 = 187.*/