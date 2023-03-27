DROP DATABASE IF EXISTS RIT;

CREATE DATABASE RIT;

USE RIT;

CREATE TABLE college (
	collegeID varchar(5),
	collegeName varchar(60) NOT NULL,
	CONSTRAINT college_PK PRIMARY KEY(collegeID));
	
DESCRIBE college;


CREATE TABLE department (
	deptNum varchar(4),
	deptName varchar(50) NOT NULL,
	collegeID varchar(5) NOT NULL,
	CONSTRAINT department_PK PRIMARY KEY (deptNum),
	CONSTRAINT department_college_FK FOREIGN KEY (collegeID) REFERENCES college(collegeID));

describe department;

CREATE TABLE deptPhone (
	deptNum varchar(4),
	type varchar(5),
	phoneNum varchar(10) NOT NULL,
	CONSTRAINT deptPhone_PK PRIMARY KEY (deptNum, type),
	CONSTRAINT deptPhone_department_FK FOREIGN KEY (deptNum) REFERENCES department(deptNum));

describe deptPhone;

CREATE TABLE course(
	deptNum varchar(4),
	courseNum varchar(3),
	courseDesc varchar(300),
	creditHours int,
	CONSTRAINT course_PK PRIMARY KEY (deptNum,courseNum)
	);

describe course;

CREATE TABLE employee(
	empNum varchar (4),
	deptNum varchar(4),
	empName varchar(30),
	CONSTRAINT emp_PK PRIMARY KEY (empNum),
	CONSTRAINT emp_department_FK FOREIGN KEY (deptNum) REFERENCES department(deptNum)
	);

describe employee;

CREATE TABLE section(
	deptNum varchar (4),
	courseNum varchar(3),
	sectionNum varchar(3),
	quarter varchar(10),
	CONSTRAINT section_PK PRIMARY KEY (deptNum, courseNum, sectionNum, quarter),
	CONSTRAINT section_department_FK FOREIGN KEY (deptNum) REFERENCES department(deptNum),
	CONSTRAINT section_course_FK FOREIGN KEY (deptNum,courseNum) REFERENCES course(deptNum,courseNum)
	);

describe section;

INSERT INTO `college` VALUES ('COE','Kate Gleason College of Engineering'),('GCCIS','Golisano College of Computing and Information Sciences'),('NTID','National Technical Institute for the Deaf');
INSERT INTO `department` VALUES ('0301','Electrical Engineering','COE'),('0306','Computer Engineering','COE'),('0308','Microsystems Engineering','COE'),('4002','Information Technology','GCCIS'),('4003','Computer Science','GCCIS'),('4010','Software Engineering','GCCIS'),('4050','NSSA','GCCIS');
INSERT INTO `course` VALUES ('0301','219','Intro to Circuits',4),('4002','217','Java Programming For IT I',4),('4002','218','Java Programming For IT II',4),('4002','219','Java Programming for IT III',4),('4002','360','Intro to Databases',4),('4003','317','Data Structures',4),('4010','340','Intro to Networking',4);
INSERT INTO `employee` VALUES ('1','0301','Bruce Halfpence'),('2','0306','Keith Beer'),('3','0308','Kevin Whittling'),('4','4002','Ed Holdup'),('5','4003','Larry Molehill');

INSERT INTO section (deptNum, courseNum, sectionNum, quarter)
         VALUES("0301","219","01","Fall");

INSERT INTO section (deptNum, courseNum, sectionNum, quarter)
         VALUES("0301","219","02","Fall");       

INSERT INTO section (deptNum, courseNum, sectionNum, quarter)
         VALUES("0301","219","01","Spring"); 
         
INSERT INTO section (deptNum, courseNum, sectionNum, quarter)
         VALUES("0301","219","02","Spring"); 
         
INSERT INTO section (deptNum, courseNum, sectionNum, quarter)
         VALUES("4002","217","01","Fall"); 
        
INSERT INTO section (deptNum, courseNum, sectionNum, quarter)
         VALUES("4002","217","02","Fall");

INSERT INTO section (deptNum, courseNum, sectionNum, quarter)
         VALUES("4002","217","03","Fall");
		 
