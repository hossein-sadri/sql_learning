-- Day 2: Multi-table queries with JOINs
-- Topics covered: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN

/*****************************
   Database normalization
 *****************************/

-- In normalized databases, related data is split across multiple tables.
-- JOINs allow us to recombine this data using primary and foreign keys.

/*****************************
   INNER JOIN
 *****************************/

-- INNER JOIN returns only rows that have matching keys in both tables
SELECT
  movies.title,
  movies.year,
  boxoffice.domestic_sales,
  boxoffice.international_sales
  FROM movies
  INNER JOIN boxoffice
  ON movies.id = boxoffice.movie_id;

/*****************************
   INNER JOIN with filtering
 *****************************/

-- Filter results after joining tables
SELECT
  movies.title,
  boxoffice.international_sales
  FROM movies
  INNER JOIN boxoffice
  ON movies.id = boxoffice.movie_id
  WHERE boxoffice.international_sales > boxoffice.domestic_sales;

/*****************************
   LEFT JOIN
 *****************************/

-- LEFT JOIN keeps all rows from the left table (movies)
-- even if no matching row exists in the right table (boxoffice)
SELECT
  movies.title,
  boxoffice.domestic_sales
  FROM movies
  LEFT JOIN boxoffice
  ON movies.id = boxoffice.movie_id;

/*****************************
   RIGHT JOIN
 *****************************/

-- RIGHT JOIN keeps all rows from the right table (boxoffice)
-- even if no matching row exists in the left table (movies)
SELECT
  movies.title,
  boxoffice.domestic_sales
  FROM movies
  RIGHT JOIN boxoffice
  ON movies.id = boxoffice.movie_id;

/*****************************
   FULL JOIN (FULL OUTER JOIN)
 *****************************/

-- FULL JOIN keeps all rows from both tables
-- Non-matching rows from either side will contain NULL values
SELECT
  movies.title,
  boxoffice.domestic_sales
  FROM movies
  FULL JOIN boxoffice
  ON movies.id = boxoffice.movie_id;
