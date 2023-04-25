-- Question #1 Goal: Count the number of publishers that are in each city, statecode combination
SELECT CONCAT(city,", ", statecode) AS Location, COUNT(statecode) AS Count
FROM publisher
GROUP BY city, statecode
ORDER BY count, Location DESC;

-- Question #2 Goal: Show the title, the count of the number of ratings, the minimum rating, the maximum rating, and the average rating rounded to the nearest penny
SELECT DISTINCT title, COUNT(rating) AS "Total Ratings", MIN(rating) AS Low, MAX(rating) AS High, ROUND(AVG(rating),2) AS Average FROM book
    left JOIN BookReview USING(ISBN)
    GROUP BY title
    ORDER BY COUNT(rating) DESC, Average DESC;

-- Question #3 Goal: Show the publisher name and count of books published for those publishers that have published more than two books
SELECT name AS "Publisher Name", COUNT(ISBN) AS "Book Count" FROM book
    JOIN publisher USING(publisherID)
    GROUP BY name
    HAVING COUNT(ISBN) > 2
    ORDER BY COUNT(ISBN) DESC, name ASC;

-- Question #4 Goal: select all of the book titles that have “bill” in their name and will display the title of the book, the length of the title, and the part of the title that follows “bill
SELECT title, LENGTH(title) as Length, SUBSTRING(title, INSTR(title, 'bill') + LENGTH('bill')) AS "After Bill"
    FROM book
    WHERE title LIKE '%bill%'
    GROUP BY title;

-- Question #5 Goal:
SELECT DISTINCT title FROM OwnersBook
    JOIN book USING(ISBN);