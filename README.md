<h1 align="center"> 💳 Data Warehouse Credit Card Applicant 💳 </h1>
<p align="center">using <b>Pentaho Data Integration (PDI)/Kettle and Microsoft SQL Server 18 ⚙</b><br><br>
.: 📄 Dataset taken from <b><a href="https://www.kaggle.com/rikdifos/credit-card-approval-prediction"> Kaggle </a></b> :.
</p>

<p align="center">
  <img src="https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99" alt="Star Badge"/>
  <a href="https://www.github.com/caesarmario">
    <img src="https://img.shields.io/github/followers/caesarmario?style=social&link=https://www.github.com/caesarmario" alt"GitHub"/>
  </a>
  <a href="https://linktr.ee/caesarmario_">
    <img src="https://img.shields.io/badge/Follow%20My%20Other%20Works-019875?style=flat&labelColor=019875&link=https:/linktr.ee/caesarmario_" alt"Linktree"/>
  </a>
</p>
<br>


## 📃 Table of Contents:
  - [About Project]
  - [Objectives]
  - [Data Set Description]
  - [ETL Process]
      - [Application Record]
      - [Database Query Result SQL]
<br>

## 🖋 About Project
*   This repository contains files to create data warehouse such as:
    - ETL files using Pentaho Data Integration (PDI)
    - Query database (SQL)

    for credit card applicant. The dataset is provided by <a href="https://www.kaggle.com/rikdifos/credit-card-approval-prediction"><b>Seanny (rikdifos)</b></a>.<br>

*   This project will also create:
    - **2 dimension tables** (Applicant_Dimension and CreditRecord_Dimension), 
    - **Time dimension** (Time_Dimension), and 
    - **1 fact table** (CreditCard_Fact).

    using PDI and Microsoft SQL Server 18.
<br><br>

## 📌 Objectives
*   Perform ETL using PDI for both datasets.
*   Create time dimension using PDI.
*   Create fact table using PDI.
<br><br>

## 🧾 Data Set Description
*   The dataset description can be seen <a href="https://www.kaggle.com/datasets/uciml/german-credit"><b>here</b></a>.
<br><br>

## ⚙ ETL Process
### 👨‍💼 Application Record
![Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/applicationRecord.png)<br>
#### ▶ Table Input Configuration
![Table Input - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/csv%20input%20configuration.png)
   - Importing data credit-risk csv <br>
#### ▶ Sort Rows Configuration
![Sort Rows - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/sort%20rows%20configuration.png)
   - Sort rows fieldname Age <br>
#### ▶ Replace Job Configuration
![Replace Job - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/replace%20in%20string%20configuration1.png)
   - Replace fieldname Job <br>
#### ▶ Replace Saving & Checking Configuration
![Replace Saving & Checking - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/replace%20in%20string%20configuration2.png)
   - Replace fieldname saving & checking <br>
#### ▶ Filter Rows Configuration
![Filter Rows - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/filter%20rows%20configuration.png)
   - Filter rows fieldname saving & checking is not null <br>
#### ▶ Formula Configuration
![Formula - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/formula%20idr%20configuration.png)
   - Formula fieldname credit amount (Rp) & Duration (Day) <br>
#### ▶ Select Values Configuration1
![Select Values 1 - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/select%20values%20configuration1.png)
   - Remove fieldname credit amount & duration <br>
#### ▶ Select Values Configuration2
![Select Values 2 - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/select%20values%20configuration2.png)
   - Select any of values <br>
#### ▶ Load Output Data Configuration
![Database Connection - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/database%20connection.png)
![Load Output Data - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/table%20output%20configuration.png)
   - Load data to Database <br>
#### ▶ Data Result in Database
![Data Result - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/sample_data.png)
   - Sample data <br>

## ⚙ Database Query Result SQL
#### ▶ SQL Query Database1
![SQL Query Database1 - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/sql_query1.png)
![SQL Query Database1 - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/output_sql1.png)
   - Age and Credit Cluster Based on Gender <br>
#### ▶ SQL Query Database2
![SQL Query Database2 - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/sql_query2.png)
![SQL Query Database1 - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/output_sql2.png)
   - Credit Analysis Based on Housing Status and Savings Account <br>
#### ▶ SQL Query Database3
![SQL Query Database3 - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/sql_query3.png)
![SQL Query Database1 - Application](https://github.com/MuhammadAuliaa/etl-pentaho-credit-data/blob/main/screenshoot/output_sql3.png)
   - Credit Analysis Based on the Combination of Purpose and Occupation <br>
