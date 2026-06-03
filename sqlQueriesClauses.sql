-- Select * - retreives all the columns(everything) from table_name
-- select (column name) from table_name  
 -- comment type-1
-- comments are the ignored during execution used for code format or notes takng
/*
   // multiline comment
*/
-- FIRST SELECT THE DATABASE USING 'use database_name'


USE MyDatabase;
show tables;

-- TASK-1) Retrives all the data inside the order table
SELECT * FROM orders;

-- TASK-2)Specific column Selection not entire data
SELECT order_id from orders;
-- taks-2.1) Select customers first_name, country, score from customers tbale 
SELECT 
 first_name,
 country,
 score
FROM
customers;

-- Here always remember - order for the column for output depends on how we are specifying during select (coulumn_order)



-- (Filtering)
-- SELECT WITH WHERE CLAUSE WITH CONDITION
-- SYNTAX:
-- SELECT column_names from table_name where condition 

-- Task-3
-- Retrives the customer's with a score a not equal to 0
SELECT 
* FROM 
customers
where
score != 0;
-- Retreives customers from germany
SELECT 
* FROM
customers
WHERE country = 'Germany';
-- Retrives the first_name and country whose country belongs to 'Germany'
SELECT 
first_name, country
 FROM customers
WHERE country = 'Germany';


-- (Sorting - orderBy)
   -- either (ascening(low to high) or descending (high to low)


-- Syntax:
 -- Select coumns from table_name orderBy column_name asc or desc;
  -- otherwise, when we don't declare explicitly it will always be ascending
Select
country, score  from customers
order by score desc;

-- Task -4)
  -- Retrives all customers and sort the results by the highest score first
SELECT 
* from customers
ORDER BY score
desc;

-- Task-4.2
  -- Retrieves all customers and sort the results bby the lowest score first
SELECT 
* FROM customers
ORDER BY score
asc;

-- Nested Order By(nested sorting)
-- Syntax: here we have to mention for each column what would be the sorting order
-- example: suppose if we want to sort the results by  country_name  and by then their highest score .
  -- Always remember , here also order matters how we declared the otder_by in which order accordingly it will treat from left to right as it's priority
SELECT 
* FROM customers
ORDER BY
country ASC,
score DESC;


-- Aggregating our data ( using group by) -aggregates the column with other
-- task-5
-- find the total score for each country
SELECT 
country,
first_name,
SUM(score) as total_score
 FROM customers
 GROUP BY 
 country, first_name;
 
 
-- Task 2 ) - find the total score and total number of customer's for each country
select * from customers;

SELECT 
country,
count(first_name) as no_of_customers,
SUM(score) as total_score

from customers
group by country;



-- 6) Having clause - in order to filter the data after group by
-- having vs where clause
/*
When we want to filter the data before the aggregation we can use the where clause
,
but when we want to filter the data after aggregation we have to use, having clause


-- task-6
-- Find the averae score for each country, 
considering only customers with a score not equals to 0 
and return only those countries with an average score greater than 430
*/
SELECT 
country,
AVG(score )as avg_score
FROM customers
WHERE score!= 0
GROUP BY country
HAVING avg_score > 430;



-- 6) SELECT WITH DISTINCT - REMOVES THE DUPLICATES FROM THE RESPONSE 
-- Task-7 - Return the unique list of all countries
SELECT DISTINCT
country
FROM customers


-- SELECT DISTINCT ID --- (NOT REQUIRED)


-- 7) TOP (limit - for others) - restricts the number of rows returned
-- TASK - Retreives only the top 3 names



SELECT TOP(3)
first_name 
FROM customers;








