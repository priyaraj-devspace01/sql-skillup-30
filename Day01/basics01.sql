show databases;

use MyDatabase;

-- Retrive all data from the table   ( single line comment or inline comment)


/*
this is a multiline comment 
*/


show tables;
-- Q1 . Retrive all data from the table 
SELECT * FROM orders;
SELECT  * FROM customers;


-- Q2. Retrive the list of columns from the table
SELECT   first_name,country,score 
FROM customers;
-- only gives us the columns we specified


-- Q3. retrive customers with a score != 0
SELECT * FROM customers
WHERE score != 0;
-- remove the only row for peter as his score is 0 .

-- Q4. Retrive customers only from GERMANY
SELECT * FROM 
customers
WHERE country = 'GERMANY';





