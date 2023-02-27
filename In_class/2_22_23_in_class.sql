DROP DATABASE IF EXISTS relationship;
CREATE DATABASE relationship;
USE relationship;

CREATE TABLE College (
    collegeID VARCHAR(9) PRIMARY KEY,
    collegeName VARCHAR(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE DEPARTMENT(
    deptID VARCHAR(9) PRIMARY KEY,
    deptName VARCHAR(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE DepartmentTPhone(
    deptID VARCHAR(9),
    type VARCHAR(10),
    phoneNumber VARCHAR(10),
    PRIMARY KEY (deptID, type),
    CONSTRAINT phone_department_fk FOREIGN KEY (deptID)
        REFERENCES DEPARTMENT(deptID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Course(
    deptNum VARCHAR(9),
    courseNum VARCHAR(9),
    courseDesc VARCHAR(50),
    creditHrs SMALLINT,
    PRIMARY KEY (courseNum, deptNum),
    CONSTRAINT course_department_fk FOREIGN KEY (deptNum)
        REFERENCES DEPARTMENT(deptID) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Section (
    deptNum VARCHAR(9),
    courseNum VARCHAR(9),
    sectionNum VARCHAR(9),
    quarter SMALLINT,
    PRIMARY KEY (deptNum, courseNum, sectionNum, quarter),
    CONSTRAINT section_course_fk FOREIGN KEY (deptNum, courseNum)
        REFERENCES Course(courseNum, deptNum)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE DEPARTMENT ADD COLUMN collegeID VARCHAR(9);

ALTER TABLE DEPARTMENT ADD CONSTRAINT department_college_fk 
    FOREIGN KEY (collegeID)
        REFERENCES College(collegeID);