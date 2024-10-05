-- CREATE TABLE
CREATE TABLE 202006_tripdata
(
ride_id VARCHAR(255),
rideable_type VARCHAR(255),
started_at DATETIME,
ended_at DATETIME,
ride_length TIME,
day_of_week VARCHAR(255),
name_of_day VARCHAR(255),
start_station_name VARCHAR(255),
start_station_id VARCHAR(255),
end_station_name VARCHAR (255),
end_station_id VARCHAR(255),
member_casual VARCHAR(255)
);

-- LOAD DATA INFILE
LOAD DATA INFILE '202006_tripdata.csv' INTO TABLE 202006_tripdata
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

-- UNION 202006_tripdata and 202007_tripdata
SELECT *
FROM 
(
SELECT *
FROM 202006_tripdata 
UNION ALL
SELECT *
FROM 202007_tripdata
UNION ALL
SELECT *
)
a

-- ADD NEW COLUMN
ALTER TABLE testing
ADD ride_duration

-- CALCULATE AND INSERT TIME DIFFERENCE INTO NEW COLUMN
UPDATE 2020_0607_tripdata
SET ride_duration = timestampdiff(second, started_at, end_at)
