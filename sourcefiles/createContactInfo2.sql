SHOW DATABASES;

DROP DATABASE IF EXISTS  conman; 

Create Database conman;
USE conman;
-- Creates the CONTACT_INFO table

CREATE TABLE contact_info(
contactID int,
firstName varchar(15),
middleInitial char(1),
lastName varchar(25),
email varchar(40),
url varchar(55),
birthday date,
notes varchar(255),
CONSTRAINT contact_info_pk PRIMARY KEY(contactID)
);