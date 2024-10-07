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
 As I begun to analyze the data, I noticed a few issues with the data. One was that there were many bike rides with ride lengths that were under a minutes and had the same started_at station name and ended_at station names. This leads me to conclude that these bikes were not really taken out for rides. Therefore, I decided to exclude these types of data from the analysis. On the other hand, I also noticed many bike rides with unsually long ride lengths, some of which were multiple days. Since I don't have anyone real to ask about this information, I took a look at Divvybikes's website (the company that Cyclistic recieved its data from), and I was able to see that a bike can only be taken out for up to 24 hours. Once a bike is taken out for more than 24 hours, it will incur a lost or stolen bike fee. For this reason, I decided not to exclude these types of data as well.
 
Once I had all of the data that I wanted to include for the analysis, I created pivot charts for all of the tables in Excel (see Cyclistic_pivot_table.png). First, I wanted to know how averge ride lengths for casual and member rides would differ. Second, I wanted to know if there were patterns in the days of the week that bikes were taken out. Next, I used my MySQL to perform the same calculations because I wanted to verify that the calculations done in Excel would match and they did.

Finally, I looked for trends in the data. Here were my findings: 
* The average ride length for casual rides was 36.90 minutes.
* The average ride lenght for member rides was 15.82 minutes.
* The top two most popular days for casual rides were Saturay and Sunday.
* The top two most popular days for member rides were Saturay and Friday.

**Share** 
href="https://https://public.tableau.com/app/profile/hui.liang/viz/12months_Cyclistic_bikedata/Dashboard1">dashboard</a>
**Act**
