-- MATHEMATICAL/NUMERIC FUNCTIONS
-- POW()
select pow(2,4);
select pow(2,-2);
select pow(-2,3);
select pow(2.77,3.45);

-- Round()
select round(2.676,0);  -- means round 2.676 to 0 decimal places
select round(2.676,1);  -- means round 2.676 to 1 decimal place
select round(2.676152,3);
select round(-5.896,0);
select round(-5.896,1);
select round(-5.896,2);
select round(5.896,-1);
select round(36567.78,-4);

-- TRUNCATE(): IS USED TO TRUNCATE THE SPECIFIED NUMBER OF DECIMAL PLACES
select truncate (5.33,0);
select truncate (5.33,1);
select truncate (5.38963214,4);

-- MOD : RETURNS REMAINDER
select mod(11,3);
select mod(12,3);
select mod(5.53,2);

-- SQRT
select sqrt(64);
select sqrt(64.58);

-- ABS() : returns absolute value of the specified number
select abs(-14.66);