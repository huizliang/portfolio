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
* detele rides with ride_length over 99 hours. I believe these were outliers as Cyclistic does offer memberships that rent bikes for mulitple days
* reformatted all dates to yyyy-m-d h:mm:ss for MySQL

**Analyze** 
 * Used Excel to create pivot tables (see Cyclistic_pivot_table.png)
 * Performed summary statistics in MySQL
 * UNION all tables and used Tableau to create <a href="https://https://public.tableau.com/app/profile/hui.liang/viz/12months_Cyclistic_bikedata/Dashboard1">dashboard</a> 

**Share** 

**Act**
