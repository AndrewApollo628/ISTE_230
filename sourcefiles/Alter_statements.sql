# alter, used to modify the structure of a TABLE
# Use of alter Statements

DROP DATABASE IF EXISTS  College; 
CREATE DATABASE College;
USE College;

CREATE TABLE advisor(
	employeeID	varchar(9)   NOT NULL COMMENT "Will be set as PRIMARY KEY",
	firstName	varchar(25)  NOT NULL,
	lastName	varchar(25)  NOT NULL,
	departmentID	varchar(4)   NOT NULL,
	departmentName	varchar(30)  COMMENT "This attribute or field is a problem"
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SHOW TABLES;
DESCRIBE advisor;

ALTER TABLE advisor ADD PRIMARY KEY(employeeID);

ALTER TABLE advisor DROP COLUMN departmentName;


-- Need to put department Names in a separate table

DROP TABLE IF EXISTS  departments; 
CREATE TABLE departments(
     departmentID       varchar(4) Primary key,
     departmentName     varchar(30)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
     
     

SHOW TABLES;
INSERT INTO departments values("4002","Information Technology");
INSERT INTO departments values("4003","Computer Science");
INSERT INTO departments values("4010","Software Engineering");
INSERT INTO departments values("4050","NSSA");
-- Just created a LOOK-UP table.   departments is a LOOK-UP table;




ALTER TABLE advisor ADD CONSTRAINT departmentID_FK
        FOREIGN KEY (departmentID) REFERENCES departments(departmentID);  

       

-- Need to run Scripts
SOURCE D:\2021_Database_ISTE230\source\createContactInfo.sql
SOURCE D:\2021_Database_ISTE230\source\insertContactInfo.sql


USE conman; 
ALTER TABLE contactInfo MODIFY firstName varchar(20)     NOT NULL; 
ALTER TABLE contactInfo MODIFY lastName varchar(20)      NOT NULL; 
ALTER TABLE contactInfo MODIFY middleInitial varchar(20) NOT NULL; 


ALTER TABLE contactInfo DROP PRIMARY KEY;



ALTER TABLE contactInfo ADD CONSTRAINT contactInfo_pk
     PRIMARY KEY(lastName,firstName,middleInitial);

DESCRIBE contactInfo;

-- -----------------------------------------------------------------
USE college;

ALTER TABLE departments ADD COLUMN officeNumber varchar(20) AFTER departmentID;

UPDATE departments SET officeNumber = "70-2345" WHERE departmentID = "4002"

ALTER TABLE departments DROP COLUMN officeNumber;

-- ------------------------------------------------------------------

USE conman;

ALTER TABLE contactInfo DROP PRIMARY KEY;

ALTER TABLE contactInfo ADD CONSTRAINT contactInfo_pk
     PRIMARY KEY(contactID);