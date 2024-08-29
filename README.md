# Project Disney Movies 🎥👸🤴🏰 🐲 

### The Team:

## 👓 Johana , Loredane, Maïlys, Nicole 👓 

## Project Overview
This project aims to explore the various factors that may influence the popularity of movies produced by Walt Disney. 
By analyzing two datasets, we want to know: 
### What influences the popularity od a Disney film ?

To achieve our project on time, we used Trello for project management and collaboration, assigning tasks and tracking our progress. Trello also served as our roadmap, guiding us trough each phase of the project. 🛣️
https://trello.com/b/ly81XNkT/week4team2 

![image](https://github.com/user-attachments/assets/298367d7-84be-4765-bba0-012efbed43dd)
 
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
#### Specific 
Transformations: We converted categorical data like genres into a consistent format, removed duplicates, and ensured that numerical fields like budget and box office figures were properly formatted for analysis. 

### 3.  Data Loading:
#### Steps Taken: 
Once the final dataset was ready, we created a final CSV file containing all relevant information. However, when attempting to import the CSV file into the MySQL database, we encountered an error due to the presence of symbols or special characters in the data. To resolve this, we performed additional data cleaning to remove or replace the problematic characters. After this cleaning step, the CSV file was successfully imported into the MySQL database, allowing for structured querying and analysis.
#### Database Setup: 
We designed the database schema using drawSQL, ensuring that our tables were well-structured and normalized. The schema included tables for movies, genres, and ratings, with appropriate foreign keys to maintain relational integrity. Based on the diagram we created in drawSQL, we developed an SQL script that defined the database structure. This script was instrumental in implementing our database, as it translated the visual schema into executable SQL code, allowing us to create the necessary tables and relationships efficiently.

### 4. Data Analysis:
#### Steps Taken: 
With the data loaded into the SQL database, we wrote and executed SQL queries to test our hypotheses. We focused on exploring relationships between variables such as running time and popularity, the impact of source material (books/novels) on popularity, and the correlation between critical reception and box office performance.
#### Example Queries: 
Queries included calculating average box office returns for movies of different lengths, comparing the popularity of movies based on books versus original screenplays, and correlating IMDb ratings with box office success.

### 5. Reporting:
#### Steps Taken: 
After extracting insights through SQL queries, we used Python and Jupyter Notebooks for data visualization and further analysis. We generated charts and graphs to visualize trends, such as the distribution of movie lengths versus their popularity or the impact of critical scores on box office earnings.
#### Presentation: 
We consolidated our findings into a final presentation, including key insights, visualizations, and conclusions drawn from the data. Additionally, we created this README file to document the project workflow, tools used, and instructions for reproducing the analysis.

### Entity Relationship Diagram (ERD) 🔃
For this project we design the relationships between the main entities: 'movies', 'genres', 'reviews"...
The 'movies' table is central, linked to the other via foreing keys. This design ensure data normalization and efficient querying. The ERD served as the foundation for our SQL script, which was created to implement this schema in the MySQL database

![image](https://github.com/user-attachments/assets/fba9dbf6-5f8d-4f11-bde3-d9e5f8b08a2a)

❓❓❓❓❓❓❓

### SQL Queries
Provide an overview of the SQL queries used in the project. You may include a brief description of each query and what it was intended to accomplish.
### SQL Queries
Overview: Below is an overview of the key SQL queries used in this project, with brief descriptions of their purposes:
#### Query 1: SELECT title, running_time, box_office FROM movies WHERE running_time > 120;
Purpose: This query retrieves all movies with a running time greater than 120 minutes along with their box office earnings, used to analyze the correlation between movie length and financial success.
#### Query 2: SELECT AVG(imdb) FROM movies WHERE based_on = 'Book';
Purpose: This query calculates the average IMDb rating for movies based on books or novels, helping to explore whether adaptations tend to receive higher audience ratings.
#### Query 3: SELECT metascore, box_office FROM movies ORDER BY metascore DESC;
Purpose: This query lists movies by their Metascore in descending order, along with their box office performance, to analyze the impact of critical reception on financial success.
#### Query 4: SELECT genre, COUNT(*) as movie_count FROM movies GROUP BY genre ORDER BY movie_count DESC;
Purpose: This query counts the number of movies in each genre, providing insight into the most common genres among Disney movies.

### Python Scripts
Describe the purpose of each Python script included in the `scripts/` directory. For instance:
- `data_cleaning.py`: Script to clean and preprocess the data. 
- `data_visualization.py`: Script to generate visualizations.

### Jupyter Notebooks ▶️
Provide an overview of the Jupyter notebooks included in the `notebooks/` directory. Mention what each notebook does, for example:
- `analysis_report.ipynb`: Full report of the analysis, including visualizations and conclusions. 

### How to Run
Provide instructions on how someone can run the code, including any dependencies or setup required.

❓❓❓❓❓❓❓❓❓

### Presentation
[Link to the presentation slides.](https://docs.google.com/presentation/d/1RjEOumWA06BTXC7TY6ClzYhru_jVVfAvo21y0gAFp_s/edit#slide=id.p1)

## Conclusion
Our analysis of Disney movies revelead several key insights :
#### Critical reception and Box office performance: ✔️
There was a noticeable correlation between higher critical scores and box office succes, indicating that cricital cclaim may influence financial outcomes.
#### Running Time and Popularity: ✖️

There was no strong correlation between running time and box office performance, suggesting that factors other than length drive a movie's succes. 
#### Impact of Source Material: ✔️
Movies based on books or novels generally performed better un terms of IMDb ratings, supporting the hypothesis that existing fanbases contribute to popularity. 

These conclusions are drawn from the data analysis process, including SQL queries, statistical testing, and visualization of results, ensuring that the findings are based on empirical evidence from the dataset.
