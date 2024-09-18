CREATE TABLE MyDimDate (
    dateid INT PRIMARY KEY,
    year INT,
    month INT,
    monthname VARCHAR(9),
    quarter INT,
    quarterName VARCHAR(2),
    day INT,
    weekday INT,
    weekdayName VARCHAR(9)
);

CREATE TABLE MyDimWaste (
    wasteid INT PRIMARY KEY,
    wastetype VARCHAR(10)
);

CREATE TABLE MyDimZone (
    zoneid INT PRIMARY KEY,
    zonename VARCHAR(10),
    city VARCHAR(50)
);

CREATE TABLE MyFactTrips(
    tripnumber INT PRIMARY KEY,
    dateid INT,
    wastetypeid INT,
    zoneid INT,
    wastecollected float,
    FOREIGN KEY (dateid) REFERENCES MyDimDate(dateid),
    FOREIGN KEY (wastetypeid) REFERENCES MyDimWaste(wasteid),
    FOREIGN KEY (zoneid) REFERENCES MyDimZone(zoneid)
);
