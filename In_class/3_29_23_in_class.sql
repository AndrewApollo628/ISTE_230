USE RIT;

SELECT college.collegeName, department.deptName, course.courseDesc
FROM (course JOIN department USING(deptNum) ) 
	JOIN college ON department.collegeID = college.collegeID;
    
SELECT college.collegeName, department.deptName, course.courseDesc
FROM (course JOIN department USING(deptNum) ) 
	JOIN college ON department.collegeID = college.collegeID
WHERE department.deptName LIKE '%Electrical%';

SELECT distinct college.collegeName, department.deptName
FROM (course JOIN department USING(deptNum) ) 
	JOIN college ON department.collegeID = college.collegeID
WHERE department.deptName LIKE '%Info%';

#CD FUll

USE cdfull;

SELECT Artists.artist, CDs.CDTitle
FROM ((Artists JOIN Songs USING (ArtistID))
	JOIN CDMakeup USING(SongID) )
    JOIN CDs USING(CDID);

USE RIT;

SELECT * FROM course CROSS JOIN department
ON course.deptNum = department.deptNum;