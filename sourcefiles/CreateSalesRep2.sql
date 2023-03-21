CREATE TABLE salesRep2 (
empID		varchar(9),
firstName	varchar(25),
lastName 	varchar(25),
address		varchar(50),
city		varchar(30),
state		varchar(2),
zip		varchar(5),
phone           varchar(13),
CONSTRAINT salesRep_PK PRIMARY KEY(empID));

INSERT INTO SalesRep2 VALUES (
'123456789', 'Ed', 'Holden', '102 Lomb Memorial Dr.', 'Rochester', 'NY', '14623', '(123)454-5555');
INSERT INTO SalesRep2 VALUES (
'888888888', 'Jim', 'Habermas', '123 Main St.', 'Rochester', 'NY', '14650', '(716)453-4199');
