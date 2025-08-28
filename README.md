# workshop1_ETL
This workshop simulates a real job interview code challenge.

⚙️ Project Workflow

1️⃣ we started Extracting the data from candidates.csv 

Data source: CSV file containing candidate applications.

Original fields:

First Name, Last Name, Email, Country

Application Date

YOE (Years of Experience)

Seniority

Technology

Code Challenge Score, Technical Interview Score


Taking into account that a candidate is considered HIRED if both scores are ≥ 7, in ext_tran.ypynb 

2️⃣ Transformation

Creation of dimensions and fact table following a Star Schema:

🔹 Dimensions

DimCandidate: personal information of candidates.

DimDate: application date (day, month, year).

DimSeniority: seniority levels (Intern, Junior, Mid-Level, Senior, etc.).

DimTechnology: technologies under evaluation.

DimCountry: countries of applicants.

🔹 Fact Table

FactApplications: contains quantitative measures (scores, hires) and foreign keys linking to dimensions.

Key transformations:

Removing duplicates in dimensions (drop_duplicates).

Converting dates to datetime.

Generating surrogate keys (ID) for each dimension.

Normalizing categorical values (Seniority levels, countries, etc.).

3️⃣ Loading

Table creation in MySQL Workbench.

Data insertion into dimensions and fact table using Python + mysql-connector.

Referential integrity ensured via foreign keys.

📈 KPIs

Hires by Technology → total hires per technology.

Hires by Year → yearly hiring trends.

Hires by Seniority → hires distribution across seniority levels.

Hires by Country over Years → hiring trends per country (focused on USA, Brazil, Colombia, Ecuador).

Average Scores by Seniority → average Code Challenge and Technical Interview scores per seniority.

Hires by Experience Range (YOE) → hires grouped into ranges (0–2, 3–5, 6–10, 11+ years).

📊 Visualizations

The visualizations are included in visualizaciones.ipynb:

Line charts with markers for trends over time.

Horizontal barplots for comparisons across ranges.

Radar charts to compare average scores.

Labels and guide lines were added to improve readability.

🚀 Tools Used

Python → pandas, seaborn, matplotlib, mysql-connector.

MySQL Workbench → schema design, data loading, queries.

Jupyter Notebook → queries and KPI visualizations.

Power BI (optional) → for interactive dashboards.

📁 workshop1_ETL
│── 📄 candidates.csv                 # Original dataset
│── 📄 dim_candidate.csv              # Transformed dimensions
│── 📄 dim_date.csv
│── 📄 dim_seniority.csv
│── 📄 dim_technology.csv
│── 📄 dim_country.csv
│── 📄 fact_applications.csv
│── 📄 dbconnection.py                # MySQL connection script
│── 📄 etl_process.ipynb              # Extraction, transformation, loading
│── 📄 visualizaciones.ipynb          # KPI queries and visualizations
│── 📄 README.md                      # Project documentation

