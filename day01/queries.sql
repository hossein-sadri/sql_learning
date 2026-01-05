-- Day 1: SQL fundamentals
-- Topics covered: SELECT, WHERE, DISTINCT, LIKE, IN, ORDER BY, LIMIT

/*****************************
   Basic SELECT statements
 *****************************/

-- Select specific columns
SELECT title, year
  FROM movies;

-- Select all columns
SELECT *
  FROM movies;

/*****************************
   Filtering results (WHERE)
 *****************************/

SELECT *
  FROM movies
  WHERE id <= 5;

SELECT *
  FROM movies
  WHERE year BETWEEN 1990 AND 2010;

SELECT *
  FROM movies
  WHERE year NOT BETWEEN 1990 AND 2010;

SELECT *
  FROM movies
  WHERE id IN (1, 2, 3, 4, 5);

SELECT *
  FROM movies
  WHERE id NOT IN (1, 2, 3, 4, 5);

-- String comparison behavior (Case sensitive or insensitive) depends on SQL engine and collation
SELECT *
  FROM movies
  WHERE title LIKE 'Toy Story'; 

SELECT * 
  FROM movies 
  WHERE title NOT LIKE 'Toy Story'; 

SELECT * 
  FROM movies 
  WHERE title = 'Toy Story'; 

-- "%"Used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE) (matches "Toy Story 1","Toy Story 2")
SELECT * 
  FROM movies 
  WHERE title LIKE '%Toy Story%'; 

-- "_" 	Used anywhere in a string to match a single character (only with LIKE or NOT LIKE) (matches "Wall-G" and "Wall-E")
SELECT * 
  FROM movies 
  WHERE Title LIKE 'Wall-_'; 

/*****************************
   DISTINCT and sorting
 *****************************/

-- Retrieve unique directors
SELECT DISTINCT director
FROM movies;

-- Retrieve unique directors and sort them alphabetically
SELECT DISTINCT director
FROM movies
ORDER BY director;

/*****************************
   Ordering and limiting
 *****************************/

-- "ORDER BY" provides a way to sort your results by a given column in ascending(ASC) or descending(DESC) order
-- The LIMIT will reduce the number of rows to return
-- The optional OFFSET will specify where to begin counting the number rows from
SELECT *
FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;
