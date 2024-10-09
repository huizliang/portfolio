# Cyclistic Case Study

**Scenario** 

(From case study brief)
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
Motivate International Inc. under this <a href="https://https://divvybikes.com/data-license-agreement">license.</a> I downloaded the data from April 2020 to March 2021. The data was contained in 12 separate xls files, one for each month.

**Process** 

AT first, I wanted to clean the data by using MYSQL. However, after realizing how large each table was and how long it would take to import each one onto MySQL, I decided it would be more efficient to clean the data in Excel first as it would also reduce its size for MySQL. 

To clean the data, I performed the following steps for each month:
* check for blanks and replace values when possible by using the information from the other columns. If there was no enough information for me to fill in the blanks, I would replace them with either NA or '0'.
* check for and delete duplications
* delete the columns start_lat, end_late, start_lng, end_lng as they were not relevant to the business task and to reduce file size
* add new column ride_length and calculate length of each ride
* reformatted all dates to yyyy-m-d h:mm:ss for MySQL

**Analyze** 

As I begun to analyze the data, I noticed two issues with the data. One was that there were many rides under 1 minute and they had the same station name in both their started_at and ended_at field. This would mean that these rides were taken out and returned shortly to the same station. While it is possible that someone would want to ride a bike for a minute, I thought this data was rather unsual because of the quantity of them. Also, some of the stations had indecipherable station names that were different from the normal station names. 
Additionally, also noticed that there were many rides that were several days long. I took a look at Divvybikes's website (the company that Cyclistic recieved its data from), and I saw that all bikes taken out for more than 24 hours will incur a lost or stolen bike fee. 

I was not sure if I should exclude the unusually long or short rides for the analysis so I decided to keep two sets of the data; one with all of the data and one that excludes the unsual rides. 

Next, I created pivot tables for all of the data in Excel (see Cyclistic_pivot_table.png), performed summary statistics for each of the tables in MySQL, and built visualizations for them in Tableau. Here were some of my key findings: 

* In the dataset that contained ALL data, the average ride length for all casual rides was 40.79 minutes.
* In the dataset that excludes rides under 1 minute and rides longer than 24 hours, the average ride length for all casual rides was 36.90 minutes.
* In the dataset that contained ALL data, the average ride length for all member rides was 16.10 minutes.
* In the dataset that excludes rides under 1 minute and rides longer than 24 hours, the average ride length for all member rides was 15.82 minutes.
  As you can see, the results did not vary much with or without the exluded rides.

  The following findings were the same for both sets of dat:
* In all months, average ride lengths for casual rides were longer than member rides (and they were almost always twice as long).
* The two most popular days for casual rides were Saturay and Sunday.
* The two most popular days for member rides were Saturay and Friday.
* The standard deviation of casual ride lengths was much wider than those of member rides.

**Share** 

<a href="https://public.tableau.com/views/CyclisticCaseStudyViz_17283990623990/CyclisticDashboard?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link">Cyclistic Visualizations</a>

<a href="https://public.tableau.com/views/CyclisticCaseStudyPresentation_17283992462420/CyclisticPresentation?:language=en-US&publish=yes&:sid=&:display_count=n&:origin=viz_share_link">Cyclistic Presentation</a>



**Act**

Based on my analysis of Cyclistic's ride data from April 2020 to March 2021, here are my top three recommendations for converting casual riders into annual members:

1. Offer weekend-only memberships to meet the demands of riders who only want to ride on weekends.
2. Send ride summary reports to casual riders at the end of their rides with a statment of how much money they would've saved if they were members.
3. Create some kind of referral program for annual members to earn rewards when they refer casual members to become annual members.

