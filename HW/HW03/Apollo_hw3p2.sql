-- Apollo, Andrew
-- ISTE 230 Section 2
-- 2/9/23
-- Script for part 2 of HW03

-- Task #1 
INSERT INTO contactInfo
(contactID,
firstName,
middleInitial,
lastName,
email,
url,
birthday,
notes)
VALUES
(2,
'Andrew',
'J',
'Apollo',
'aja7699@rit.edu',
NULL,
'2001-06-28',
'Started at RIT August 2021.'),
(3,
'Eli',
'T',
'Wallowby',
'etwallowby@concor.com',
'www.concor.com/~wallowby',
'1956-03-26',
'All meetings must be
scheduled through his
assistant.'),
(4,
'Eve',
'C',
'Sampson',
'esampson@concor.com',
NULL,
'1972-05-11',
'Very helpful.'),
(5,
'Carson',
'B',
'Campbell',
'cbc232@mvch.org',
NULL,
'1955-01-05',
'Wife: Lisa Kids:
Lucas, Lucy, and
Lucinda.');

-- Task #2
ALTER TABLE contactInfo ADD nickName VARCHAR(20) DEFAULT 'To Be Determined';

-- Task #3 
ALTER TABLE contactInfo MODIFY firstName VARCHAR(15) NOT NULL;
ALTER TABLE contactInfo MODIFY lastName VARCHAR(25) NOT NULL;

-- Task #4
UPDATE contactInfo SET nickName = "Dave" WHERE contactID = 1;

-- Task #5
UPDATE contactInfo SET url = NULL WHERE url = 'www.concor.com/~wallowby';