-- Day 1: Basic SELECT queries
-- "SELECT" is used to retrieve columns from a table.

-- Select specific columns
SELECT title, year
FROM movies;

-- Select all columns
SELECT *
FROM movies;

-- Queries with constraints:
-- "WHERE" clause is used to filter certain result from being returned.

SELECT * FROM movies WHERE Id <=5;
SELECT * FROM movies WHERE Year BETWEEN 1990 and 2010;
SELECT * FROM movies WHERE Year NOT BETWEEN 1990 and 2010;
SELECT * FROM movies WHERE Id IN(1,2,3,4,5);
SELECT * FROM movies WHERE Id NOT IN(1,2,3,4,5);
SELECT * FROM movies WHERE Title LIKE "Toy Story"; -- Case insensitive exact string comparison
SELECT * FROM movies WHERE Title NOT LIKE "Toy Story"; -- Case insensitive exact string inequality comparison
SELECT * FROM movies WHERE Title = "Toy Story"; -- Case sensitive exact string comparison
SELECT * FROM movies WHERE Title LIKE "%Toy Story%"; -- "%"Used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE) (matches "Toy Story 1","Toy Story 2")
SELECT * FROM movies WHERE Title LIKE "Wall-_"; -- "_" 	Used anywhere in a string to match a single character (only with LIKE or NOT LIKE) (matches "Wall-G" and "Wall-E")

-- Filtering and sorting Query results

SELECT DISTINCT Director FROM movies; -- DISTINCTS provides a convenient way to discard rows that have a duplicate column value
SELECT DISTINCT Director FROM movies ORDER BY Director; -- ORDER BY provides a way to sort your results by a given column in ascending or descending order
SELECT DISTINCT * FROM movies ORDER BY Title ASC LIMIT 5 OFFSET 5; --The LIMIT will reduce the number of rows to return, and the optional OFFSET will specify where to begin counting the number rows from.
