"SELECT firstName, lastName
    FROM advisor
    WHERE departmentID = '4002'
        AND firstName = 'Ed';"

"SELECT firstName, lastName
    FROM advisor
    WHERE (departmentID = '4002'
        OR departmentID = '4010');"

"SELECT CONCAT(lastName,", ", firstName)
    FROM advisor
    WHERE (departmentID = '4002'
        OR departmentID = '4010');"

"SELECT CONCAT(lastName,", ", firstName) AS "Advisor_Name", departmentID
    FROM advisor;"

"SELECT CONCAT(lastName,", ", firstName)  "Advisor_Name", departmentID
    FROM advisor;"

"SELECT *
    FROM advisor
    WHERE lastName LIKE "%ee%"; "

SELECT * FROM advisor
    WHERE lastName like "S%";