-- DENSE RANK OVER() : DOES NOT SKIP NUMBERS WHEN THERE IS A TIE unlike rank over

SELECT name, score, gender,
DENSE_RANK() OVER (partition by gender ORDER BY score DESC) 
FROM student;
