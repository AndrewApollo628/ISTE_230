DROP DATABASE if EXISTS Company;

CREATE DATABASE Company;

USE Company;

CREATE TABLE district (
distID		varchar(5),
distName	varchar(50),
CONSTRAINT district_PK PRIMARY KEY (distID));

CREATE TABLE territory (
terrID 		varchar(5),
terrName	varchar(50),
salesRepID	varchar(9),
distID		varchar(5),
CONSTRAINT territory_PK PRIMARY KEY  (terrID),
CONSTRAINT district_territory_FK
FOREIGN KEY (distID) REFERENCES district(distID));

CREATE TABLE salesRep (
empID		varchar(9),
firstName	varchar(25),
lastName 	varchar(25),
address		varchar(50),
city		varchar(30),
state		varchar(2),
zip		varchar(5),
CONSTRAINT salesRep_PK PRIMARY KEY(empID));

CREATE TABLE TechSalesRep (
empNum		varchar(9),
fName		varchar(25),
lName 		varchar(25),
addr		varchar(50),
city		varchar(30),
state		varchar(2),
zip		varchar(5),
CONSTRAINT salesRep_PK PRIMARY KEY(empNum));
