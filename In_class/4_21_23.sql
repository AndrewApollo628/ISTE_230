USE CollegeInfo;

SELECT State, City, COUNT(College) 'College Count'
    FROM CollegeInfo
    WHERE City LIKE 'R%'
    GROUP BY State,City
    HAVING COUNT(College) <= 3;

SELECT State, City, COUNT(College) 'College Count'
    FROM CollegeInfo
    GROUP BY State,City
    HAVING City LIKE 'R%' AND COUNT(College) <= 3;

