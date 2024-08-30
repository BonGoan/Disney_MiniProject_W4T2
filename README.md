
# Project Disney Movies 🎥👸🤴🏰 🐲 

### The Team:

## 👓 Johana , Loredane, Maïlys, Nicole 👓 

## Project Overview
This project aims to explore the various factors that may influence the popularity of movies produced by Walt Disney. 
By analyzing two datasets, we want to know: 
### What influences the popularity od a Disney film ?

To achieve our project on time, we used Trello for project management and collaboration, assigning tasks and tracking our progress. Trello also served as our roadmap, guiding us trough each phase of the project. 🛣️
https://trello.com/b/ly81XNkT/week4team2 

<img width="706" alt="image" src="https://github.com/user-attachments/assets/b4e13d04-c580-409b-8cd6-dce6081af668"> 

 
## :bulb: Hypothesis:bulb: 

#### 1. Does the critical reception (cia IMDB an Rottent Tomatoes) affect box office performance ? ❔
Movies with higher critical acclaim are likely to perform better financially. Positive reviews can generate buzz and attract more viewers. This analysis will see if higher critical scores lead to better box office returns.  
 
#### 2. Is there a relation between popularity an running time ?  ❔
Shorter movies might be more popular due to their concise storytelling and accessibility. 
Longer movies whether running time affects popularity, based on box office performance and audience ratings. 

#### 3. Are movies that are based on books more popular ? ❔
Adaptations often have a built_in fanbase, which can boost initial interest. Books also provide rich stories that might lead to more successful films. This will be tested by comparing box office earnings an critical reception between adaptations and originals. 

## Data Pipeline 🔄

### 1. Data Acquisition:
#### Steps Taken: 
We sourced our primary dataset from Kaggle, specifically from the "Disney Movies Dataset" which included key information like movie titles, running time, budget, box office earnings, release dates, and ratings (IMDb, Metascore, Rotten Tomatoes). During our initial exploration, we realized that the dataset lacked the "genre" information necessary for our analysis. To address this, we acquired an additional dataset from Kaggle, "Disney Movies," which included the missing genre data.
#### Preprocessing: 
We reviewed the datasets to identify any missing or inconsistent data. Initial observations led us to understand the structure and content of the datasets, helping us plan for data merging and cleaning.

### 2. Data Transformation:
#### Steps Taken: 
After analyzing the datasets, we proceeded with data wrangling and cleaning. This included handling missing values, standardizing formats (such as date formats), and ensuring consistency across both datasets. We merged the two datasets based on the common movie title field to create a comprehensive dataset that included all necessary information.
#### Specific transformations: 
We converted categorical data like genres into a consistent format, removed duplicates, and ensured that numerical fields like budget and box office figures were properly formatted for analysis. 

### 3.  Data Loading:
#### Challenges Encountered: 
Despite our efforts to prepare a clean and comprehensive dataset, we encountered significant issues when attempting to import our final CSV file into the MySQL database. Problems included the presence of special characters, missing tables during import, missing rows, and empty tables. Even after extensive troubleshooting and additional cleaning, we were unable to resolve these issues sufficiently to proceed with the database import.
#### Resolution: 
Given the persistence of these challenges, we decided to move forward using the data we had previously cleaned and analyzed. We skipped the database import and proceeded directly to data analysis and visualization in Python, ensuring that the project could continue despite the setbacks.

### 4. Data Analysis:
#### Steps Taken: 
With the challenges faced during the database import, we focused on using Python for direct data analysis. We leveraged the cleaned dataset to explore relationships between variables such as running time and popularity, the impact of source material (e.g., books/novels) on popularity, and the correlation between critical reception and box office performance.
#### Example Analyses: 
We performed analyses such as calculating average box office returns for movies of different lengths, comparing the popularity of movies based on books versus original screenplays, and correlating IMDb ratings with box office success.

### 5. Reporting:
#### Steps Taken: 
To present our findings, we utilized Python and Jupyter Notebooks for data visualization. This included generating charts and graphs that illustrated trends such as the distribution of movie lengths versus their popularity and the impact of critical scores on box office earnings.

#### Presentation: 
Our final presentation consolidated these insights, featuring key findings, visualizations, and conclusions drawn from our analyses. Additionally, this README file documents the project workflow, tools used, and instructions for reproducing the analysis.

### Entity Relationship Diagram (ERD) 🔃
For this project we design the relationships between the main entities: 'movies', 'genres', 'reviews"...
The 'movies' table is central, linked to the other via foreing keys. This design ensure data normalization and efficient querying. The ERD served as the foundation for our SQL script, which was created to implement this schema in the MySQL database
![image](https://github.com/user-attachments/assets/7214ce70-39a1-46a6-b8ba-75bf7ebc129c)

 

### Presentation
[Link to the presentation slides.](https://docs.google.com/presentation/d/1RjEOumWA06BTXC7TY6ClzYhru_jVVfAvo21y0gAFp_s/edit#slide=id.p1)

## Conclusion 🧠
Our analysis of Disney movies revelead several key insights :
#### Critical reception and Box office performance: ✔️
There was a noticeable correlation between higher critical scores and box office succes, indicating that cricital cclaim may influence financial outcomes.
#### Running Time and Popularity: ✖️
There is a weak correlation between popularity and running time. Longer movies tend to be more favorably received or possibly that they are more consistent in quality, while shorter movies might vary more widely in audience reception. There are factors other than the length of movies that influence ratings/popularity.
There was no strong correlation between running time and box office performance, suggesting that factors other than length drive a movie's succes. 
#### Impact of Source Material: ✔️
Movies based on books or novels generally performed better un terms of IMDb ratings, supporting the hypothesis that existing fanbases contribute to popularity. 

These conclusions are drawn from the data analysis process, including SQL queries, statistical testing, and visualization of results, ensuring that the findings are based on empirical evidence from the dataset.


