SELECT * FROM SalesRep 
UNION
SELECT * FROM TechSalesRep;

SELECT * FROM TechSalesRep 
UNION
SELECT * FROM salesRep;

SELECT firstName, lastName, city, state FROM salesRep
UNION
SELECT fName, lName, city, state FROM TechSalesRep;

SELECT fName, lName, city, state FROM TechSalesRep
UNION
SELECT firstName, lastName, city, state FROM salesRep;

SELECT * FROM SalesRep
UNION
SELECT * FROM salesRep2;

SELECT firstName, lastName FROM salesRep
UNION
SELECT firstName, lastName FROM salesRep2;

SELECT lastName, firstName, salesRep.state FROM salesRep
INNER JOIN 
TechSalesRep ON salesRep.empID = TechSalesRep.empNum;

SELECT * FROM SalesRep
JOIN
TechSalesRep on salesRep.empID = TechSalesRep.empNum;

SELECT * FROM salesRep
INNER JOIN 
salesRep2 ON salesRep.empID = SalesRep2.empID;

SELECT salesRep.firstName, salesRep.lastName, salesRep.city, salesRep.state FROM SalesRep
JOIN
TechSalesRep on salesRep.empID = TechSalesRep.empNum;

SELECT TechSalesRep.empNum FROM TechSalesRep
JOIN
salesRep ON TechSalesRep.empNum = salesRep.empID;

SELECT salesRep.firstName, salesRep.lastName, salesRep.city, salesRep.state FROM salesRep
WHERE
empID IN (SELECT TechSalesRep.empNum FROM TechSalesRep JOIN salesRep ON TechSalesRep.empNum = salesRep.empID);

SELECT salesRep.firstName, salesRep.lastName, salesRep.city, salesRep.state FROM salesRep
WHERE EXISTS (SELECT * FROM TechSalesRep WHERE TechSalesRep.empNum = salesRep.empID);

SELECT * FROM TechSalesRep
WHERE empNum IN (SELECT empNum FROM salesRep WHERE TechSalesRep.empNum = salesRep.empID);

SELECT * FROM salesRep
WHERE empid IN (SELECT empNum FROM TechSalesRep WHERE TechSalesRep.empNum = salesRep.empID);