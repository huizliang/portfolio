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

-- CREATE TABLE
CREATE TABLE 202007_tripdata
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
LOAD DATA INFILE '202007_tripdata.csv' INTO TABLE 202007_tripdata
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
