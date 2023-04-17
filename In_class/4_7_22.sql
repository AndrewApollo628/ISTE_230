DROP DATABASE IF EXISTS cleaningcompany2;
CREATE DATABASE cleaningcompany2;
USE cleaningcompany2;

CREATE TABLE employee (
    empNO TINYINT AUTO_INCREMENT PRIMARY KEY,
    employeeName VARCHAR(40) NOT NULL,
    address VARCHAR(50) NOT NULL,
    hireDate DATE NOT NULL,
    discriminator CHAR(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE hourlyRateEmployee (
    empNO TINYINT PRIMARY KEY,
    hourlyRate DECIMAL(7,2) DEFAULT 0.00,
    hoursWorked SMALLINT DEFAULT 0,
    CONSTRAINT hourly_employee_fk FOREIGN KEY (empNO) REFERENCES employee(empNO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE salariedEmployee (
    empNO TINYINT PRIMARY KEY,
    annualSalary DECIMAL(11,2) DEFAULT 0.00,
    CONSTRAINT salaried_employee_fk FOREIGN KEY (empNO) REFERENCES employee(empNO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO employee (employeeName, address, hireDate, discriminator) VALUES
    ('Employee One', '123 Main St. Roch, NY 14604', '2022-08-10', 'h'),
    ('Employee Two', '456 Genesee St. Avonh, NY 14414', '2022-06-15', 'h'),
    ('Employee Three', '789 Orchard St. Buffalo, NY 14610', '2022-07-22', 'h'),
    ('Employee Four', '999 Main St. Roch, NY 14610', '2021-05-10', 's'),
    ('Employee Five', '555 Whodunnit St. Geneseo, NY 14610', '2021-05-10', 's'),
    ('Employee Six', '789 Lake St. York, NY 14610', '2021-04-02', 's');

SELECT * FROM employee;

INSERT INTO hourlyRateEmployee VALUES 
    (1, 15.00, 40),
    (2, 25.00, 30),
    (3, 17.50, 38);

SELECT * FROM hourlyRateEmployee;

INSERT INTO salariedEmployee VALUES
    (4, 30000),
    (5, 75000),
    (6, 25500);

SELECT * FROM salariedEmployee;

SELECT * FROM employee JOIN hourlyRateEmployee
    USING(empNO);

SELECT employeeName "Name", DATE_FORMAT(hireDate, '%M %D, %Y') "Date Hired",
    FORMAT(hourlyRate, 2) 'Rate', hoursWorked "Hours Worked" FROM employee JOIN hourlyRateEmployee
    USING(empNO);

SELECT * FROM employee JOIN salariedEmployee
    USING(empNO);

SELECT employeeName "Name", DATE_FORMAT(hireDate, '%M %D, %Y') "Date Hired",
    FORMAT(annualSalary, 2) 'Salary' FROM employee JOIN salariedEmployee
    USING(empNO);

SELECT * FROM employee
    WHERE discriminator = 's';

SELECT * FROM employee
    WHERE discriminator = 'h';

SELECT * FROM employee
    ORDER BY discriminator;

-- Moving on to another database ------------------------------------------------------------------
DROP DATABASE IF EXISTS musicians;
CREATE DATABASE musicians;
USE musicians;

CREATE TABLE musician (
    memberId VARCHAR(10) NOT NULL PRIMARY KEY,
    discriminator CHAR(1) DEFAULT('N')
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE instrument (
    musicianID VARCHAR(10) NOT NULL,
    instrumentName VARCHAR(40) NOT NULL,
    PRIMARY KEY (musicianID, instrumentName),
    CONSTRAINT musician_instrument_fk FOREIGN KEY (musicianID) REFERENCES musician(memberId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO musician VALUES 
    ('1111111111', 'Y'),
    ('2222222222', 'N'),
    ('3333333333', 'N');

INSERT INTO instrument VALUES
    ('1111111111', 'Trumpet'),
    ('2222222222', 'Flugle Horn'),
    ('3333333333', 'Bass Clarinet');

SELECT memberId, instrumentName 'Instrument' FROM musician
    JOIN instrument ON musician.memberId = instrument.musicianID;