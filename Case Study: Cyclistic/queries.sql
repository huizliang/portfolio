-- CREATE new column
ALTER TABLE 2020_0607_tripdata
ADD ride_duration int

-- UPDATE new column with time difference calculation
UPDATE 2020_0607_tripdata
SET ride_duration = timestampdiff(minute, started_at, end_at)
  
-- SELECT only rides of casual members

select *
FROM 2020_0607_tripdata
WHERE member_casual LIKE 'c%'

-- MAX, MIN, MEAN 

SELECT MAX(ride_duration)
FROM 2020_0607_tripdata
WHERE member_casual LIKE 'm%'

SELECT MIN(ride_duration)
FROM 2020_0607_tripdata
WHERE member_casual LIKE 'm%'

SELECT avg(ride_duration)
FROM 2020_0607_tripdata
WHERE member_casual LIKE 'm%'
