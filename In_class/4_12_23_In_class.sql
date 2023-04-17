USE County;

SELECT * FROM contact;

SELECT * FROM relative;

DELETE FROM contact WHERE contactID = '10006';

UPDATE contact SET contactID = '11111' WHERE contactID = '10007';