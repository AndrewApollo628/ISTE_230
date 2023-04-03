USE RIT;

SELECT course.courseDesc FROM Course
WHERE course.deptNum IN
	(SELECT deptNum FROM department WHERE deptName IN ('Computer Science', 'Information Technology'));
    
SELECT college.collegeName, course.courseDesc FROM course 
	JOIN department USING(deptNum)
		JOIN college USING(collegeID);
    
USE College;

SELECT studentID , concat(student.lastName,',', student.firstName) AS 'Student', collegeAddress, graduated, concat(advisor.lastName, ',' ,advisor.firstName) AS 'Advisor'
	FROM student JOIN advisor WHERE student.advisorID = advisor.employeeID ORDER BY student.lastName;
    
SELECT taid AS 'TA_ID', studentID, concat(student.lastName, ',', student.firstName) AS 'Student', collegeAddress, graduated, concat(advisor.lastName, ',' ,advisor.firstName) AS 'Advisor'
	FROM ta JOIN student USING(depatmentID)
		JOIN advisor  WHERE student.advisorID = advisor.employeeID;

SELECT taid AS 'TA_ID', studentID , concat(student.lastName,',', student.firstName) AS 'Student', collegeAddress, graduated, concat(advisor.lastName, ',' ,advisor.firstName) AS 'Advisor'
	FROM student JOIN advisor ON student.advisorID = advisor.employeeID 
		JOIN ta on ta.lastName = student.lastName AND ta.firstName = student.firstName
	ORDER BY TA_ID DESC;

SELECT taid AS 'TA_ID', studentID , concat(student.lastName,',', student.firstName) AS 'Student', collegeAddress, graduated, concat(advisor.lastName, ',' ,advisor.firstName) AS 'Advisor'
	FROM student JOIN advisor ON student.advisorID = advisor.employeeID 
		JOIN ta on ta.departmentID = student.departmentID
	ORDER BY TA_ID DESC;