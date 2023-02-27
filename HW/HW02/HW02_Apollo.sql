DROP DATABASE IF EXISTS  HW2; 

CREATE DATABASE HW2;
USE HW2;

CREATE TABLE ITEM (
   itemID VARCHAR(25),
   itemName VARCHAR(25),
   name VARCHAR(25),
   street VARCHAR(25),
   city VARCHAR(25),
   state CHAR (2),
   zipcode VARCHAR (10),
   cost DECIMAL (5, 2),
   retailPrice DECIMAL (6, 2),
   notes VARCHAR (255),
   shellQty INT UNSIGNED DEFAULT NULL,
   perishable TINYINT (1),
   returnable TINYINT (1),
   description MEDIUMTEXT,
   PRIMARY KEY(itemID)
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8;