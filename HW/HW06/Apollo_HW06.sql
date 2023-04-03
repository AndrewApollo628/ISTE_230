USE book;

-- Question #1 
SELECT 


--Question #2 (NOT DONE)
SELECT Reviewer.name, book.title, BookReview.rating FROM book
    JOIN bookreview USING(ISBN)
        JOIN reviewer USING(reviewerid);

-- Question #3 
--Book -> book author -> author 
-- order by tile,lastname  

-- Question #4 
-- <= $50, sort by price DESC 
-- Book -> bookauthor -> author -> owners book -> book condition 

-- Question #5 
-- Outer JOIN 
-- book -> book review -> reviewer (is inner join fro review to reviewer)

-- Question #6 
-- Have to use a sub query 
-- LIke 'S%'