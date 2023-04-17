USE cdfull;

SELECT * FROM songs WHERE UPPER(SongTitle) = 'Blue';
SELECT * FROM songs WHERE LOWER(SongTitle) = 'blue';

SELECT UPPER(SongTitle) 'Title' FROM songs WHERE SongTitle = 'BLUE';

SELECT * FROM songs WHERE UPPER(SongTitle) LIKE '%IT%';

SELECT SongTitle, LENGTH(SongTitle) AS 'TLength' FROM songs LIMIT 0,5;

SELECT SongTitle, LENGTH(SongTitle) AS 'TLength' FROM songs
    WHERE SongTitle LIKE 'Larger than %';


SELECT SongTitle, LENGTH(SongTitle) AS 'TLength' FROM songs
    WHERE SongTitle LIKE 'Then the morning%';

SELECT SongTitle, INSTR(LOWER(SongTitle),'th') "POS"
    FROM songs LIMIT 5;

SELECT SongTitle, LOCATE('th',LOWER(SongTitle)) "POS"
    FROM songs LIMIT 5;

SELECT SongTitle, LOCATE('th',LOWER(SongTitle),5) "POS"
    FROM songs LIMIT 5;

SELECT SongTitle, INSTR(LOWER(SongTitle),'th') "POS"
    FROM songs 
    WHERE INSTR(LOWER(SongTitle),'th') > 0
    LIMIT 5;

SELECT SongTitle, INSTR(LOWER(SongTitle),'th') "POS"
    FROM songs 
    WHERE LOWER(SongTitle) LIKE '%th%'
    LIMIT 5;