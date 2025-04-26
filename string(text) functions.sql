-- String functions  : are used to deal with the strig type values. Also called text functions

-- ASCII()
select ASCII ('a') from DUAL;
select ASCII ('i') from DUAL;
select ASCII ('A') from DUAL;
select ASCII ('ABC') from DUAL;

-- LOWER() : Coverts character strings data to lower case
select lower('INFORMATION TECHNOLOGY');

-- UPPER() : Coverts character strings data to upper case
select upper('information technology');

-- LENGTH : RETURNS THE LENGTH OF THE STRING [takes space into account]
select length('information technology');

-- REPLACE()
select replace('information technology','information','latest');

-- left : returns the left most characters from a string passed as an argument with the specified number of characters from the left
select left('information technology',6);

-- right 
select right('information technology',6);

-- LTRIM() : RETURNS A STRING AFTER REMOVING TRAILING SPACES/BLANKS FROM THE LEFT SIDE OF THE STRING
select ltrim('  LIBRARY FUNCTION');

-- RTRIM() : RETURNS A STRING AFTER REMOVING TRAILING SPACES/BLANKS FROM THE RIGHT SIDE OF THE STRING
select rtrim('  LIBRARY FUNCTION  ');

-- TRIM() : RETURNS A STRING AFTER REMOVING TRAILING SPACES/BLANKS FROM THE STRING
select trim('  LIBRARY FUNCTION  ');

-- REVERSE : RETURNS REVERSE OF AN INPUTTED STRING
select reverse('library function');

-- REPEAT : repeats a string for the specified number of times
select repeat("function",3);

 -- substring : returns part of the inputted string [ignores blanks or spaces]
 select substr('hello world',3,7);

-- instr : returns the position of the first occurrence of the substring in the given string . returns 0 if the string is not present [takes spaces into account]
select instr('library function','fun');

-- concat : results the string that results from concatening the arguments
select concat('shruti','technology');
select concat('shruti','tell','me','latest','technology');
