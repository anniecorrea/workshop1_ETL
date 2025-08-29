# workshop1_ETL

This project demonstrates the design and implementation of a Data Warehouse (DW) for analyzing candidate hiring data.
It covers the ETL (Extract, Transform, Load) pipeline, dimensional modeling with a Star Schema, loading data into MySQL, and generating KPI reports with Python visualizations.

The DW allows HR and Recruitment teams to evaluate performance across technologies, seniority levels, countries, and experience ranges, improving decision-making.


# 1. Extraction (E)

Source: candidates.csv dataset.

Contains applicant-level data:

Personal data: First Name, Last Name, Email, Country

Application details: Application Date, Years of Experience (YOE), Seniority, Technology

Scores: Code Challenge Score, Technical Interview Score

Hiring outcome: Hired (0/1 flag)

# 2. Transformation (T)

Performed in etl_process.ipynb using Python (pandas):

Converted Application Date into datetime format.

Generated dimension tables with unique values (drop_duplicates).

Assigned surrogate keys (ID) for each dimension.

Standardized categorical values (Seniority ordered: Intern → Junior → Mid-Level → Senior → Lead → Architect).

Created FactApplications table with:

Surrogate keys (CandidateID, DateID, TechnologyID, SeniorityID, CountryID).

Measures: Code Challenge Score, Interview Score, Hired.

# 3. Loading (L)

Schema created in MySQL Workbench with primary and foreign keys.

Data loaded into dimensions and fact table using mysql-connector in Python.

Referential integrity enforced with constraints.

# Dimentional Model Schema 
<img width="985" height="742" alt="image" src="https://github.com/user-attachments/assets/4f556183-b301-4177-9a50-10bb135392ee" />





