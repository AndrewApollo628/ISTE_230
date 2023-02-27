DROP DATABASE IF EXISTS example1;
CREATE DATABASE example1;

USE example1;

CREATE TABLE Floor (
    RmNO SMALLINT PRIMARY Key, 
    Floor SMALLINT

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Student (
    SSN VARCHAR(9) PRIMARY KEY,
    studentName VARCHAR(50),
    DOB DATE 

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Course (
    courseID VARCHAR(9) PRIMARY KEY,
    courseName VARCHAR(30),
    prof VARCHAR(30), 
    Bldg VARCHAR(10),
    RmNO SMALLINT,
    CONSTRAINT floor_fk FOREIGN KEY (RmNO)
        REFERENCES Floor(RmNO)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Grade (
    courseID VARCHAR(9),
    SSN VARCHAR(9),
    Grade VARCHAR(5),
    PRIMARY KEY (courseID, SSN),
    CONSTRAINT student_fk FOREIGN KEY (SSN)
        REFERENCES Student(SSN),
    CONSTRAINT course_fk FOREIGN KEY (courseID)
        REFERENCES Course(courseID)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO Floor VALUES (405, 4), (201, 2), (106,1), (217, 2);

INSERT INTO Student VALUES ('123456789', 'Student 1', '1989-05-19'), 
                           ("222222222", 'Student 2', '2000-06-01'), 
                           ('333333333', 'Student 3', '2003-09-23'), 
                           ('444444444', 'Student 4', '2001-10-25');

INSERT INTO Course VALUES ('10058', 'CIS 2520', 'Harley', 'BB', 405),
                          ('25600', 'ART 101', 'Smith', 'PI', 201),
                          ('38569', 'MATH 200', 'Jones', 'CL', 106),
                          ('10654', 'PSY 400', 'Snipes', 'JM', 217);

INSERT INTO Grade VALUES ('10058', '123456789', 'C'),
                         ('25600', '222222222', 'B'),
                         ('38569', '333333333', 'A'),
                         ('10654', '222222222', 'A');

SELECT courseName, studentName, Grade
    FROM (Grade JOIN Course USING (courseID))
        JOIN Student USING (SSN);

SELECT courseName, studentName, Grade
    FROM (Grade JOIN Course ON Grade.courseID = Course.courseID)
        JOIN Student USING (SSN);

SELECT courseName, studentName, Grade
    FROM (Student JOIN Grade USING (SSN))
        JOIN Course USING (courseID)
        ORDER BY Grade, studentName DESC
        LIMIT 2;