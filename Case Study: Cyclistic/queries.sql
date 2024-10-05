-- SELECT statement

-- select only rides taken by casual members

select *
FROM 2020_0607_tripdata
WHERE member_casual LIKE 'c%'

-- select only rides taken by annual members
select *
FROM 2020_0607_tripdata
WHERE member_casual LIKE 'm%'

-- MAX, MIN, MEAN OF ANNUAL MEMBERS

SELECT avg(ride_duration)
FROM 2020_0607_tripdata
WHERE member_casual LIKE 'm%'

SELECT MAX(ride_duration)
FROM 2020_0607_tripdata
WHERE member_casual LIKE 'm%'

SELECT MIN(ride_duration)
FROM 2020_0607_tripdata
WHERE member_casual LIKE 'm%'
