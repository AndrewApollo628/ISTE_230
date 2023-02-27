-- Question #1 
SELECT title AS 'Title of Film', length AS 'Length of Film', RIGHT(description,50) AS 'Part of Description (Right side)' FROM film
WHERE length <= 100 AND 
description LIKE '%fun%';

-- Question #2 
SELECT title AS 'Title of Film', length AS 'Length of Film', RIGHT(description,60) AS 'Part of Description (Right side)' FROM film
WHERE description LIKE '%Database%' OR 
description LIKE '%California%';

-- Question 3
SELECT title AS Title, length AS 'Length of Film', rating AS Rating FROM film
WHERE length >=120 AND length <=140 AND
rating = 'G';

-- Question #4
SELECT title AS 'Movie Title', length AS 'Length of Film', rating AS Rating FROM film
WHERE (title LIKE '%river%') AND
(rating = 'R' OR
rating = 'PG-13');

-- Question #5 
SELECT title AS Title, length AS 'Film Length', release_year AS 'Release Year', rating AS 'Film Rating' FROM film
WHERE release_year > 2012 AND 
length > 160 AND
(rating = 'G' OR rating = 'PG-13');

-- Question #6 
SELECT title AS 'Film Title', replacement_cost AS 'Replacement Cost', rating AS 'Film Rating' FROM film
WHERE title NOT LIKE '_a%' AND 
replacement_cost = 19.99;

-- Question #7 
SELECT title AS Title, LEFT(description,55) AS 'Partial Description (LEFT)' FROM film
WHERE description LIKE '%Frisbee%'
AND description LIKE '%Fanciful%';

-- Question #8 
SELECT title AS 'Title of Film', rating AS 'Film Rating', release_year AS 'Release Year' FROM film
WHERE (rating = 'G' AND release_year = '2006') OR
(rating = 'PG' AND release_year = '2010');