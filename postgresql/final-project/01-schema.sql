-- Creating DimDate table
CREATE TABLE IF NOT EXISTS DimDate (
    dateid INT PRIMARY KEY,
    date DATE,
    year INT,
    quarter INT,
    quarterName VARCHAR(2),
    month INT,
    monthname VARCHAR(20),
    day INT,
    weekday INT,
    weekdayName VARCHAR(20)
);

-- Creating DimTruck table
CREATE TABLE IF NOT EXISTS DimTruck(
    truckid INT PRIMARY KEY,
    truckType VARCHAR(20)
);

-- Creating DimStation table
CREATE TABLE IF NOT EXISTS DimStation(
    stationid INT PRIMARY KEY,
    city VARCHAR(50)
);

-- Creating FactTrips table with foreign key constraints
CREATE TABLE IF NOT EXISTS FactTrips(
    tripid INT PRIMARY KEY,
    dateid INT,
    stationid INT,
    truckid INT,
    wastecollected DECIMAL(5,2),
    FOREIGN KEY (dateid) REFERENCES DimDate(dateid),
    FOREIGN KEY (stationid) REFERENCES DimStation(stationid),
    FOREIGN KEY (truckid) REFERENCES DimTruck(truckid)
);
