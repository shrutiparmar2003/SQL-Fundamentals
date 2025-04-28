-- WINDOW FUNCTIONS
/* ROW_NUMBER OVER() : A window function in SQL is a type of analytic function that performs a calculation over a set of rows (a "window") that are related to the current row. The key here is that these functions do not change the number of rows in the result set — each row retains its identity.

Window functions allow you to perform calculations across rows while still being able to reference the individual rows, which is different from regular aggregation functions like SUM() or COUNT(), which group data and return a single result.*/



create database school;
use school;
create table student(
student_id INT PRIMARY KEY NOT NULL,
name VARCHAR(55) NOT NULL,
gender CHAR(1) NOT NULL,
score INT,
subject VARCHAR(50)
);
INSERT INTO student (student_id, name, gender, score, subject) VALUES
(1, 'Alice', 'F', 85, 'Math'),
(2, 'Bob', 'M', 92, 'Science'),
(3, 'Charlie', 'M', 78, 'English'),
(4, 'Daisy', 'F', 92, 'Science'),
(5, 'Eva', 'F', 88, 'Math'),
(6, 'Frank', 'M', 75, 'English'),
(7, 'George', 'M', 85, 'Math'),
(8, 'Hannah', 'F', 95, 'Science');

select*from student;

-- ROW_NUMBER() : Assigns a unique sequential integer to the rows within the results set. The numbers are assigned based on the order specified in the order by clause. It doesnt skip numbers even if two rows have same values.

select name, score ,
ROW_NUMBER() OVER (order by score desc ) as row_num
from student;
