-- Apollo, Andrew
-- ISTE 230 Section 2
-- 3/23/23
-- Script for HW05

USE jobs;

-- Question #1
SELECT companyName, division, listing FROM interview 
    WHERE listing = 'y'
UNION
SELECT companyName, division, listing FROM interview 
    WHERE listing = 'n';

-- Question $2
SELECT  employer.companyName,  employer.division,  employer.stateCode FROM employer
    INNER JOIN interview WHERE employer.companyName = interview.companyName
        AND employer.division = interview.division;

-- Question #3
SELECT stateCode, description FROM state
    WHERE stateCode NOT IN (SELECT stateCode fROM employer);

-- QUESTION #4
SELECT location, qtrCode FROM quarter ORDER BY(location);

-- Question #5 
SELECT * fROM quarter
    WHERE qtrCode IN ('20201','20204');

-- Question #6
SELECT employer.companyName, employer.stateCode, state.description FROM employer
    JOIN state ON employer.stateCode = state.stateCode;

-- Question #7 
SELECT state.description, employer.companyName FROM state
    LEFT JOIN employer ON employer.stateCode = state.stateCode;