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

-- More Added on 4-19-23 in class
SELECT SongTitle, INSTR(LOWER(SongTitle),'th') "POS"
    FROM songs 
    WHERE INSTR(LOWER(SongTitle),'th') > 0
    LIMIT 5;

SELECT SongTitle, INSTR(LOWER(SongTitle),'th') "POS"
    FROM songs 
    WHERE INSTR(LOWER(SongTitle),'th') = 1
    LIMIT 5;

SELECT SongTitle, INSTR(LOWER(SongTitle),'th') "POS"
    FROM songs 
    WHERE LOWER(SongTitle) LIKE 'th%'
    LIMIT 5;

SELECT SongTitle, INSTR(LOWER(SongTitle),'th') "POS"
    FROM songs 
    HAVING INSTR(LOWER(SongTitle),'th') > 0
    LIMIT 5;

SELECT SongTitle, INSTR(LOWER(SongTitle),'th') "POS"
    FROM songs 
    HAVING POS > 0
    LIMIT 5;

SELECT SongTitle, SUBSTR(SongTitle,1,INSTR(SongTitle, " ")-1) as Stub FROM songs
    LIMIT 6;

SELECT SongTitle, SUBSTR(SongTitle,1,4) as Stub FROM songs;

SELECT SongTitle, SUBSTR(SongTitle,1,4) as Stub FROM songs
    WHERE SongTitle LIKE 'Then the morning%';

SELECT CONCAT(CONCAT(songs.SongTitle, ' by '), artists.Artist) AS WholeThing
    FROM songs JOIN artists USING(ArtistID) LIMIT 5;

SELECT CONCAT(songs.SongTitle, ' by ', artists.Artist) AS WholeThing
    FROM songs JOIN artists USING(ArtistID) LIMIT 5;

SELECT ROUND(12345,2);

SELECT SongTitle, length 'Song Length', length/60 "L", 
    ROUND(length/60,1) "R", TRUNCATE(length/60,1) 'T' FROM songs LIMIT 5;

SELECT SongTitle, length 'Song Length', length*60 "L", 
    ROUND(length*60,-1) "R", TRUNCATE(length*60,-1) 'T' FROM songs LIMIT 5;

SELECT SongTitle, length 'Song Length', length*60 "L", 
    ROUND(length*60,-2) "R", TRUNCATE(length*60,-2) 'T' FROM songs LIMIT 5;

SELECT SongTitle, length 'Song Length', TRUNCATE(length/60,0) 'Minutes', 
    MOD(length,60) "Seconds" FROM songs LIMIT 5;

SELECT SongTitle, length 'Song Length', TRUNCATE(length/60,0) 'Minutes', 
    (length%60) "Seconds" FROM songs LIMIT 5;

SELECT AVG(length) "AvgLength" FROM songs;

SELECT AVG(DISTINCT length) "AvgLength" FROM songs;

SELECT COUNT( DISTINCT length) 'CountLength', COUNT(*) "All"
    FROM songs;

SELECT MAX(length) 'Max Length' FROM songs;

SELECT MIN(length) 'Max Length' FROM songs;

SELECT SUM(length) 'Total Length' FROM songs;

SELECT SUM(DISTINCT length) 'Total Length' FROM songs;

SELECT COUNT(SongID) as "Num Songs"
    FROM CDMakeup
    GROUP BY CDID;