-- multiple query to execute multiple queries at a time
SELECT * FROM orders;
SELECT * FROM customers;

--  Always it's mandatory to add the semi-colon at the end of the individual queries to tell sql that is the end of that query

-- you are not only query thr data inside the database but instead we can add our static fields/columns with random data, while querying
-- way - 1 ) normal query 
SELECT * FROM customers;

-- way - 2 ) static query to add the temporary static fields into the table
SELECT 
id, country,
'USA' AS "customer_DEFAULT_city"
FROM customers;


-- WHEN WE ONLY WANT TO EXECUTE A PARTICULAR PART OF THE QUERY WE CAN DO THAT
SELECT 
* FROM customers -- till here we can use it run only to see all the data inside the table
WHERE country = "Germany";





