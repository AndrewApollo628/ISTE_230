-- Apollo, Andrew 
-- HW# 06 
-- 4/3/23
-- ISTE230
-- Professor: French, Bryan

USE book;

-- Question #1 Goal: statement will show the title for each book and its category description (sports, romance, etc). Sort the results first by category description in descending order, followed by title in ascending order.
SELECT book.title, category.CatDescription FROM Book 
    JOIN category WHERE book.category = category.catID 
        ORDER BY category.CatDescription DESC;


-- Question #2 Goal: List the book titles and their ratings for all reviewers who do not work for a newspaper or any other news organization
SELECT Reviewer.name, book.title, BookReview.rating FROM book
    JOIN bookreview USING(ISBN)
        JOIN reviewer USING(reviewerid)
        WHERE reviewer.EmployedBy IS NULL;

-- Question #3 Goal:  show the title and the lastname and firstname for the author(s) of the book
SELECT book.title, author.lastname, author.firstname FROM Book
    JOIN bookauthor USING(ISBN) 
        JOIN author USING(authorID)
        ORDER BY title, lastname DESC; 

-- Question #4 Goal: lists  titles, author’s names, and prices for pre-owned books that are priced at $50.00 or below
SELECT book.title, author.firstname, author.lastname, ownersbook.price FROM book
    JOIN bookauthor USING(ISBN) 
        JOIN author USING(authorID)
            JOIN ownersbook USING(ISBN)
                JOIN bookcondition USING(ranking)
                WHERE price<='50.00'
                    ORDER BY price DESC;

-- Question #5 Goal: Show the titles of ALL books and if the book had a reviewer show the name of the reviewer(s)
SELECT book.title, reviewer.name FROM reviewer
    JOIN bookreview USING(reviewerid) 
        RIGHT JOIN book USING(ISBN);
        

-- Question #6 Goal: display the ISBN and title of book that have a category that starts with the letter ‘S’
SELECT book.ISBN, book.title FROM BOOK 
    WHERE category in (SELECT catID FROM category WHERE CatDescription LIKE 'S%');