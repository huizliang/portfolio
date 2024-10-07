# Case Study: Cyclistic

**Scenario** 
* You are a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share
company in Chicago. The director of marketing believes the company’s future success
depends on maximizing the number of annual memberships. Therefore, your team wants to
understand how casual riders and annual members use Cyclistic bikes differently. From these
insights, your team will design a new marketing strategy to convert casual riders into annual
members. But first, Cyclistic executives must approve your recommendations, so they must be
backed up with compelling data insights and professional data visualizations. 

**Business task** 

* Analyze and identify how annual members and casual members use Cyclistic bikes differently
* Recommend marketing strategies to convert casual riders into annual members
* Follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share, and Act

**Ask** 
1. How do annual members and casual riders use Cyclistic bikes differently?

2. Why would casual riders buy Cyclistic annual memberships?

3. How can Cyclistic use digital media to influence casual riders to become members?

**Prepare** 

* All of the data came from the Coursera Data Analytics Professional Certificate course. The data has been made available by
Motivate International Inc. under this <a href="https://https://divvybikes.com/data-license-agreement">license.</a> I download the data from April 2020 to March 2021. 

**Process** 

Used Excel to clean each table by performing the following steps:
* check for blanks and replace values when possible
* deleted rows with blanks if essential information was missing
* check and delete duplications
* delete non-essential columns e.g. start_lat, end_late, start_lng, end_lng
* add column ride_length and calculate length of each ride
* reformatted all dates to yyyy-m-d h:mm:ss for MySQL

**Analyze** 

As I begun to analyze the data, I noticed a few issues with the data. One was that there were many bike rides with ride lengths that were under a minutes and had the same started_at station name and ended_at station names. While it is possible that these bikes were taken out for 1 minute (perhaps to test the bikes or the rider changed their mind), I decided not to include these types of data as many of them also had missing station names or "HQ" which I presume means headquarter. If I were working on a real team, I would verify this information but since I'm not, I can only conclude that these were not normal rides.

Second, I noticed there were also many bike rides with unsually long ride lengths, some stretching up to multiple days. Again, since I can't verify the reasons, I took a look at Divvybikes's website (the company that Cyclistic recieved its data from), and I was able to see that all bikes taken out for more than 24 hours will incur a lost or stolen bike fee. For this reason, I decided not to exclude these types of data as well.
 
Once I had all of the data that I wanted to include for the analysis, I created pivot charts for all of the tables in Excel (see Cyclistic_pivot_table.png). First, I wanted to see what the averge ride lengths were for both casual and member rides. Second, I wanted to know if there were patterns for the days of week that bikes were taken out. Next, I verified these calculations on MySQL to see if they would match and they did. Finally, I looked for trends in the results. Here were some of my key findings: 

* The average ride length for all casual rides was 36.90 minutes.
* The average ride length for all member rides was 15.82 minutes.
* In all months, average ride lengths for casual rides were always longer than member rides (they were almost always double the length time).
* The two most popular days for casual rides were Saturay and Sunday.
* The two most popular days for member rides were Saturay and Friday.

**Share** 
href="https://https://public.tableau.com/app/profile/hui.liang/viz/12months_Cyclistic_bikedata/Dashboard1">dashboard</a>
**Act**
