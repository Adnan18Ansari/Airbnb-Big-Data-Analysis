# Airbnb Big Data Management with Hadoop Tools

## Introduction
Airbnb became one-of-a-kind accommodation service that is used and recognized by the whole world. It allows the renting of houses or rooms owned by hosts to guests with the help of a technology tool. Over the recent years, Airbnb has been undergoing rapid development as an online platform community to provide access in accommodation and hospitalities globally. 

## Problem Statement
The huge number of listings generate a lot of data (structured and unstructured) separately by location in compressed file by Airbnb which will be updated in frequent manner. Even though it is not necessary to acquire data for all locations, the dataset for one selected location can be relatively huge. Hence, it becomes an issue for public users interested in understanding the Airbnb market based on the data. The whole dataset must be collected, loaded, and organized to proffer data ready for query and analysis to gain valuable business insights.  

## Objectives 
1. To set up of database and build data pipeline for managing Airbnb data. 
2. To utilize data access tools tools in Hadoop architecture for performing loading, query and running analysis on Airbnb data.

## Data Sources
[Inside Airbnb](http://insideairbnb.com/get-the-data.html) is a website with a repository of data sourced from publicly available information such as listings, reviews, and calendar details from the original Airbnb site. The website provides datasets to Airbnb listings worldwide for about 108 locations. These data have been analyzed, cleansed, and aggregated where appropriate to facilitate the usage by the public in a compressed gz file. For this project, we demonstrated the data pipeline development using data from Singapore. The data used in this project are *Listings, Reviews, and Calendars*. 

## Process Flows
As the Airbnb data is usually arranged by location, a shell script is created to automate the downloading process of the data files according to the user’s location preference with Airbnb listings from the Insider Airbnb website. Users are allowed to input the location, location URL, and compile date of the data. The data files (i.e., Listings, Reviews, and Calendar) are saved in a local file system under a specified directory with the folder named as per the location’s name. In this project, the files were saved in a ‘SINGAPORE’ folder. The downloaded files were unzipped before loading to HDFS storage as they were initially downloaded in a compressed gz format. Subsequently, MongoDB and different Hadoop Tools such as PySpark, Apache Pig, and Apache Hive were utilized to access, query, and analyze the data. 
Below is the process flow overview for the entire Airbnb data pipeline. 

![](<!Image/Figure1.PNG>)

## Scripts
- The data collection process is automated by running the ***BatchRun_Initial.sh*** file
- ***BatchRun_Hive.sh*** and ***BatchRun_Pig.sh*** are the respective scripts that consolidate all codes to run in one go in ***Pig*** and ***Hive*** respectively.
- Querying and analyzing of data using ***PySpark*** is done in jupyter notebook.

### Query :-
- Top 20 of listings in overall experience, with more than 50 reviews
- Top 20 of listings in terms of Cleanliness, with more than 50 reviews
- Top 20 of listings in terms of Accuracy , with more than 50 reviews
- Top 20 of listings in terms of Check-in, with more than 50 reviews
- Top 20 of listings in terms of Communication with host, with more than 50 reviews
- Top 20 of listings in terms of location, with more than 50 reviews
- Top 20 of listings in terms of value , with more than 50 reviews

### Analysis :-
- Compute count of listings by room type
- Compute count of listings by property type
- Compute average price of listings by property type, arranged in descending order
- Compute average price of listings by property type, arranged in ascending order
- Compute number of reviews comment by year
- Compute average price by location 

## Conclusion
- Airbnb is a thriving online business that generates a large amount of data at high speed and in the form of structured and unstructured manner. Hence, the bulky number of files and frequent updates could impose a problem for the public users interested in understanding Airbnb via the datasets in which commodity hardware machines cannot fulfill such computational requirements. Thus, the first aim to build a data pipeline in managing the Airbnb data has been achieved to ease the entire data loading, querying, and analysis process. Singapore was the chosen location for demonstration purposes. However, this pipeline was flexible to accommodate other locations as its entire process can be replicated.
- Per comparison among the tools, PySpark performed the best compared to other tools due to its fastest processing time yet simple coding (i.e., lesser programming complexity). 
- PySpark was one tool that could easily be extended to perform machine learning and visualization, such as quick exploration during the exploratory data analysis (EDA) stage.


