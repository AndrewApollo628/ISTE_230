-- Apollo, Andrew
-- ISTE 230 Section 2
-- 2/9/23
-- Script for part 1 of HW03

-- Question #1 
SELECT headOfState from country WHERE name = "United States";

-- Question #2
UPDATE country SET headOFState = "Joseph R. Biden Jr." WHERE name = "United States";
SELECT headOfState from country WHERE name = "United States";

-- Question #3
SELECT name FROM country WHERE indepYear IS NULL;

-- Question #4
SELECT name, continent FROM country WHERE population>1000000000 AND lifeExpectancy>70 AND lifeExpectancy<80;

-- Question #5
SELECT name FROM country WHERE continent = "North America" OR  continent = "South America";