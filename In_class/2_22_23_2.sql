DROP DATABASE IF EXISTS sjemployees;
CREATE DATABASE sjemployees;
USE sjemployees;

CREATE TABLE Employee (
    empID VARCHAR(9) PRIMARY KEY,
    name VARCHAR(30),
    title VARCHAR(40),
    supervisorID VARCHAR(9)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Employee VALUES ('222', "Employee 2", "Instructor", 333),
    ('333', "Employee 3", "Instructor Supervisor", 444),
    ('335', "Employee 35", "Professor", 444),
    ('444', "Employee 4", "Chair", 999),
    ('999', "Employee 9", "Dean", NULL),
    ('111', "Employee 1", "Programmer", 125),
    ('124', "Employee 24", "Programmer", 125),
    ('125', "Employee 25", "Manager", NULL);

SELECT e.name AS Employee, e.title, s.name AS Supervisor, s.title AS 'Supervisor Title'
    FROM Employee AS e JOIN Employee s 
    ON e.supervisorID = s.empID;