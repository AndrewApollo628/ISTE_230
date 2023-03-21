SELECT * FROM salesRep
    WHERE empID NOT IN (SELECT empNum FROM TechSalesRep);

SELECT * FROM TechSalesRep
    WHERE empNum NOT IN (SELECT empID FROM salesRep);

SELECT * FROM salesRep
    WHERE empID NOT IN (SELECT empID FROM salesRep2);

SELECT * FROM salesRep
    WHERE NOT EXISTS (SELECT * FROM TechSalesRep
        WHERE TechSalesRep.empNum = salesRep.empID);

SELECT * FROM TechSalesRep
    WHERE NOT EXISTS (SELECT * FROM salesRep
        WHERE TechSalesRep.empNum = salesRep.empID);