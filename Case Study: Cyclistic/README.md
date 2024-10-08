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

As I begun to analyze the data, I noticed two issues with the data. One was that there were many bike rides with ride lengths that were under a minutes and had the same started_at station name and ended_at station names. While it is possible that these bikes were taken out for 1 minute (perhaps to test the bikes or the rider changed their mind), I decided not to include these types of data as many of them also had missing station names or "HQ" which I presume means headquarter. If I were working on a real team, I would verify this information but since I'm not, I can only conclude that these were not normal rides.

Second, I noticed there were also many bike rides with unsually long ride lengths, some stretching up to multiple days. I also noticed that this was much more common in casual rides than member rides. Again, since I can't verify the reasons, I took a look at Divvybikes's website (the company that Cyclistic recieved its data from), and I saw that all bikes taken out for more than 24 hours will incur a lost or stolen bike fee. For this reason, I decided to keep two sets of data: one that includes all rides over 14 hours and one that exclude rides longer than 24 hours.
 
Next, I created pivot tables for all of the data in Excel (see Cyclistic_pivot_table.png). First, I wanted to see what the averge ride lengths were for both casual and member rides. Second, I wanted to know if there were patterns for the days of week that bikes were taken out. Next, I performed summary statistics for each of the tables in MySQL to see if they would match the ones in Excel and they did. Finally, I looked for trends in the results. Here were some of my key findings: 

* In the dataset that contained rides over 24 hours, the average ride length for all casual rides was 40.79 minutes.
* In the dataset without rides over 24 hours, the average ride length for all casual rides was 36.90 minutes.
* In the dataset that contained rides over 24 hours, the average ride length for all member rides was 16.10 minutes.
* In the dataset without rides over 24 hours, the average ride length for all member rides was 15.82 minutes.
  As you can see, the results did not vary much with or without the rides that were longer than 24 hours.

  The findings below were the same for both sets of data.
* In all months, average ride lengths for casual rides were longer than member rides (and they were almost always twice as long).
* The two most popular days for casual rides were Saturay and Sunday.
* The two most popular days for member rides were Saturay and Friday.
* The standard deviation of casual ride lengths was much wider than those of member rides.

**Share** 

<a href="https://https://public.tableau.com/app/profile/hui.liang/viz/12months_Cyclistic_bikedata/Dashboard1">Cyclistic Visualizations</a>

**Act**

Based on my analysis of Cyclistic's ride data from April 2020 to March 2021, here are my top three recommendations for converting casual riders into annual members:

1. Since the top two days for casual rides were Saturday and Sunday, Cyclistic can try offering weekend-only memberships to riders.
2. Since there are so many casual rides with long ride lengths, Cyclistic could try sending summary reports to casual rides when they finish their rides. The summary report would state how long their ride was and an estimation of how much money they could've saved if they were members.
3. Capitalize on the large number of member riders that already exist by allowing them to earn rewards if they refer new members.

