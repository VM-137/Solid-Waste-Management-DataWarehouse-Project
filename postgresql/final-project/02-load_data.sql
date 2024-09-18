-- Loading DimDate data from CSV
COPY DimDate (dateid, date, year, quarter, quarterName, month, monthname, day, weekday, weekdayName)
FROM '/csv-files/DimDate.csv' 
DELIMITER ',' 
CSV HEADER;

-- Loading DimTruck data from CSV
COPY DimTruck (truckid, truckType)
FROM '/csv-files/DimTruck.csv' 
DELIMITER ',' 
CSV HEADER;

-- Loading DimStation data from CSV
COPY DimStation (stationid, city)
FROM '/csv-files/DimStation.csv' 
DELIMITER ',' 
CSV HEADER;

-- Loading FactTrips data from CSV
COPY FactTrips (tripid, dateid, stationid, truckid, wastecollected)
FROM '/csv-files/FactTrips.csv' 
DELIMITER ',' 
CSV HEADER;
