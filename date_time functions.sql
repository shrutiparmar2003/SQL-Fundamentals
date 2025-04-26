-- DATE TIME FUNCTIONS : return output in the form of string

-- CURDATE(): returns current system date
select curdate();

-- NOW : Returns current date and time
select now();

-- SYSDATE() : Returns time at which the function executes
select sysdate();

select date('2021-02-03 01:03:05');
select month('2021-02-03');
select dayname('2021-02-03');
select year('2021-02-03');
select dayofmonth('2021-02-03');
select monthname('2021-02-03');
select dayofweek('2021-02-03');
select dayofyear('2021-02-03');