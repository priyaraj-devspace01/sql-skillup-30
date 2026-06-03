-- Part - 1) 
-- Retreives the data from databases using query - where the query doesn't affect the data inside the table , instead returned the expcted response only based on query 


-- Basic Clauses
-- Select and From
show databases;
use MyDatabase;  -- to use it for now 

SHOW TABLES FROM MyDatabase; -- to show the tables 
-- query - 1 - show all the data inside tables for orders inside db customer
SELECT  * -- selects everything
 FROM. -- tells where to get the entries
customers;
-- Selct Particular columns(name, country)  data
SELECT first_name, country -- it always retuns based on the order we gave
FROM customers;

-- 2) Ct-2) 
-- Filtering - WHERE -filters the data based on condition
-- Query-2
-- Retrive the customer's with score not equals to 0
SELECT * 
FROM customers
WHERE score != 0;

-- Retrives the customers from germany
SELECT * FROM 
customers
WHERE country = 'germany';


-- Ct - Sorting - order by - (ascending or descending) 
/*
syntax : 
select * from table_name order by column_name order
*/



-- Retreive the customers and sort the resutls by the highest score first
SELECT * 
FROM customers
ORDER BY country asc;



-- nested sorting
-- sort based on country then for each country based on scores desc
SELECT * FROM customers
ORDER BY country ASC, score DESC;



-- C3 - grouping - combines the rows wiht the same values
-- Aggregates a column by another column 

-- Exercise - total score by each country
SELECT
 country,
SUM(score) as total_score_per_each -- alias
FROM customers
GROUP BY country;

SELECT * FROM customers;
-- we can pass two param for grouping
SELECT 
country, first_name, SUM(score)
FROM customers
group by country, first_name;  -- now combinely applying


-- find the total score as well as total customers for each country
SELECT 
country,
COUNT(first_name) as total_cust_count,
SUM(score) as total_score
FROM customers
GROUP BY country;


-- find the total score as well as total customers for each country and sort them high to low based on total score for eahc country
SELECT 
country,
COUNT(first_name) as total_cust_count,
SUM(score) as total_score
FROM customers
GROUP BY country
ORDER BY total_score DESC;


-- Ct-4) having - after aggregation and can be onlu used with group by
-- having vs where(before the group by),

-- get the customers avg score for each country greater than 500 but make the initial score must not be zeor
SELECT 
country,
COUNT(first_name),
AVG(score) as avg
FROM customers
WHERE score!= 0
GROUP BY country
HAVING avg> 430;

-- Ct-5 ) Distinct - removes the duplicates from data( repeated value)
-- use after select
SELECT DISTINCT
country 
FROM customers;


-- Ct-) LIMIT(or TOP) -- select the limit(count) - in order to limit our data based on value we pass
-- no of rows we want to see in th result
SELECT * FROM orders LIMIT 3;

-- Retrives the top 3 customers from customers table with highest score
SELECT 
first_name,
score
FROM customers
ORDER BY score DESC
LIMIT 3;

-- REVERSE OF THE PREV PROBLEM
SELECT 
first_name, score
FROM customers
ORDER BY score asc
LIMIT 2;


-- get the 2 most recent orders: 
SELECT * FROM orders
ORDER BY order_date DESC
LIMIT 2;

-- ALL QUERY WITH CLAUSES AT ONCE
-- Writing Order:
--   SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY → LIMIT

-- Execution Order:
  -- FROM → WHERE → GROUP BY → HAVING → SELECT → DISTINCT → ORDER BY → LIMIT
  
  
  
-- mutli query 
SELECT * FROM customers;
SELECT * FROM orders;


-- Static(fixed) values 
SELECT 123 as static_num;
SELECT "HELLO" as greet;

-- USE
SELECT 
first_name, score,
"default" as DEAF
FROM customers;

-- Execute the selection part

-- SELECT
-- * FROM customers. -- select and run to only get all data before WHERE clause 

-- WHERE score > 40 ;



















