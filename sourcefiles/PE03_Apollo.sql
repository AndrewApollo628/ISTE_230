DROP DATABASE IF EXISTS  PE3;

CREATE DATABASE PE3;
USE PE3;

CREATE TABLE Automobile (
    MAKE VARCHAR(15),
    MODEL VARCHAR(15),
    YEAR CHAR(4), 
    COLOR CHAR(15),
    STYLE CHAR(15),
    MSRP DOUBLE,
    VIN SMALLINT(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, 
    PRIMARY KEY(VIN)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Automobile(
    MAKE,
    MODEL,
    YEAR,
    COLOR,
    STYLE,
    MSRP
)

VALUES(
    'Chevy',
    'Volt',
    '2017',
    'White',
    'Hybrid',
    '39290.99'
);

INSERT INTO Automobile(
    MAKE,
    MODEL,
    YEAR,
    COLOR,
    STYLE,
    MSRP
)

VALUES(
    'Ford',
    'Mustang',
    '2019',
    'Blue',
    'Convertible',
    '47900.99'
);

INSERT INTO Automobile(
    MAKE,
    MODEL,
    YEAR,
    COLOR,
    STYLE,
    MSRP
)

VALUES(
    'Toyota',
    'Prius',
    '2018',
    'Silver',
    'Hybrid',
    '25000.50'
);

INSERT INTO Automobile(
    MAKE,
    MODEL,
    YEAR,
    COLOR,
    STYLE,
    MSRP
)

VALUES(
    'Toyota',
    'Camery',
    '2008',
    'Blue',
    'Sedan',
    '2000.50'
);

INSERT INTO Automobile(
    MAKE,
    MODEL,
    YEAR,
    COLOR,
    STYLE,
    MSRP
)

VALUES(
    'Dodge',
    '1500',
    '2007',
    'Green',
    'Pickup',
    '1799.99'
);