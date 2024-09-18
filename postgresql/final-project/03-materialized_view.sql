CREATE MATERIALIZED VIEW max_waste_status AS
SELECT d.year, s.city, f.stationid, t.trucktype , MAX(f.wastecollected) as max_waste_collected
FROM FactTrips f
INNER JOIN DimDate d ON f.dateid = d.dateid
INNER JOIN DimStation s ON f.stationid = s.stationid
INNER JOIN DimTruck t ON f.truckid = t.truckid
GROUP BY d.year, s.city, f.stationid, t.trucktype;