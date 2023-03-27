use rit;

SELECT department.deptName, college.collegeName 
	FROM department INNER JOIN college 
		ON college.collegeID = department.collegeID;

SELECT department.deptName, college.collegeName 
	FROM department INNER JOIN college 
		USING (collegeID);
        
SELECT * FROM department 
	LEFT OUTER JOIN employee 
		USING(deptNum);
        
SELECT * FROM department 
	RIGHT OUTER JOIN employee 
		USING(deptNum);

SELECT department.deptName, college.collegeName 
	FROM department RIGHT OUTER JOIN college
		USING(collegeID);
        
SELECT collegeID AS "College ID" , LEFT(collegeName, 25), deptNum AS "Department_Number", deptName AS "Department Name" 
	FROM college JOIN department USING(collegeID);
    
SELECT deptNum "Department Number", deptName, type "Type of Phone", phoneNum 
	FROM department JOIN deptPhone USING(deptNum);
    
SELECT deptNum "Department Number", deptName, type "Type of Phone", phoneNum 
	FROM department LEFT JOIN deptPhone USING(deptNum);
    
INSERT INTO deptPhone VALUES ('0301', 'chair', '5188361104');

SELECT deptName, courseNum "Course Number", courseDesc "Course Description"
	FROM department JOIN course USING(deptNum);
    
SELECT deptName, courseNum "Course Number", courseDesc "Course Description"
	FROM department JOIN course USING(deptNum)
		ORDER BY deptName, courseNum;