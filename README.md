# workshop1_ETL

This project implements a complete ETL (Extract, Transform, Load) pipeline to process raw data and generate useful business KPIs.
It covers the ETL (Extract, Transform, Load) pipeline, dimensional modeling with a Star Schema, loading data into MySQL, and generating KPI reports with Python visualizations.


# The workflow is structured into some main steps:

- Design a Dimensional Data Model (DDM),
- ETL Process 
  - Extract: Load the CSV file in Python. 
  - Transform:
    - Apply the “HIRED” rule. 
    - Optional: create tables for dimensions and facts to simplify the Load process. 
  - Load: Insert the transformed data into a DW.
- Build queries, KPIs, and visualizations directly from the DW.

## 📂 Project Structure
```
📁 workshop1_ETL
│── 📄 candidates.csv                 # Original dataset
│── 📄 dim_candidate.csv              # Dimension tables 
│── 📄 dim_date.csv
│── 📄 dim_seniority.csv
│── 📄 dim_technology.csv
│── 📄 dim_country.csv
│── 📄 fact_applications.csv          #Fact table 
│── 📄 dbconnection.py                # MySQL connection 
│── 📄 ext_tran.ipynb                 # Extract, transform
│── 📄 Load.ipynb                     # Load
│── 📄 Kpis.ipynb                     #KPI's and visualizations 
│── 📄 README.md                      # Documentation
│── 📄 StarSquema.png                 #Star Schema  DM
```

# Data Description
- First name
- Last name
- Email
- Country
- Application Date
- YOE (Years of Experience)
- Seniority
- Technology
- Code Challenge Score
- Technical Interview Score

Note: A candidate is considered HIRED if both scores are ≥ 7. 


# Installation & Execution
Clone the repository
```
git clone https://github.com/anniecorrea/workshop1_ETL.git
```

# Dimentional Model (Star Schema)
<img width="985" height="742" alt="image" src="https://github.com/user-attachments/assets/4f556183-b301-4177-9a50-10bb135392ee" />

# 1. Extraction 
```
data = pd.read_csv("candidates.csv", sep=";")
```


# 2. Transformation (T)
Creation of dimensions and fact table following the Star Schema
- Dimensions
  - dim_candidate
  - dim_country
  - dim_date
  - dim_seniority
  - dim_technology
- Fact Table
  - Fact_applications
  
Also, in this step, i defined a function to determine if a candidate is hired based on their scores and create a new column "Hired". 

  

# 3. Loading (L)

## Configure MySQL connection in dbconnection.py:
```
import mysql.connector

def get_connection():
    cnx = mysql.connector.connect(
        host="localhost",
        user="", #Change this to your username
        password="",  #Change this to your password
        database="workshop1" 
    )
    return cnx
```

- Table creation in MySQL Workbench.
- Data insertion into dimensions and fact table using Python + mysql-connector.
- Referential integrity ensured via foreign keys.

 # 4. KPI's and Visualizations 
1. Hires by Technology → total hires per technology.
2. Hires by Year → yearly hiring trends.
3. Hires by Seniority → hires distribution across seniority levels.
4. Hires by Country over Years → hiring trends per country (focused on USA, Brazil, Colombia, Ecuador).
5. Average Scores by Seniority → average Code Challenge and Technical Interview scores per seniority.
6. Hires by Experience Range (YOE) → hires grouped into ranges (0–2, 3–5, 6–10, 11+ years).

# Tools Used

- Python → pandas, seaborn, matplotlib, mysql-connector.
- dbdiagram.io → schema design
- MySQL Workbench → data loading, queries.
- Jupyter Notebook 







