--Insert Statement for advisor in the college database
INSERT INTO Advisor (employeeID, firstName, lastName, departmentID) VALUES
        ('111111111', "Sam", "Sneed", "4010");

--Shows the padding 
INSERT INTO Advisor (employeeID, firstName, lastName, departmentID) VALUES
        ('1111', "Sam", "Sneed", "4010");

--Should spit out that the primary key is too long 
INSERT INTO Advisor (employeeID, firstName, lastName, departmentID) VALUES
        ('1111111119', "Sam", "Sneed", "4010");

--Create table for student
CREATE TABLE student(
    studentID VARCHAR(9),
    firstName VARCHAR(20),
    lastName VARCHAR(20),
    homeAddress VARCHAR(30),
    collegeAddress VARCHAR(30),
    advisorID CHAR(9),
    departmentID VARCHAR(4),
    graduated BOOLEAN DEFAULT 0
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--Altering the student table
ALTER TABLE student ADD CONSTRAINT student_department_fk FOREIGN KEY (departmentID)
    REFERENCES departments(departmentID);

ALTER TABLE departments CONVERT TO CHARACTER SET utf8mb4;


DROP TABLE IF EXISTS student;
CREATE TABLE student(
    studentID VARCHAR(9),
    firstName VARCHAR(20),
    lastName VARCHAR(20),
    homeAddress VARCHAR(30),
    collegeAddress VARCHAR(30),
    advisorID CHAR(9),
    departmentID VARCHAR(4),
    graduated BOOLEAN DEFAULT 0,
    PRIMARY KEY(studentID),
    CONSTRAINT student_department_fk (departmentID)
        REFERENCES departments(departmentID)

);