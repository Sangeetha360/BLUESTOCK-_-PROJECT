# Mutual Fund Data Analysis Project

## Overview
This project performs data ingestion, cleaning, loading, and analysis of mutual fund datasets using Python, Pandas, SQLite, and SQL.

## Project Structure

```text
bluestock_mf_capstone/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── scripts/
│   ├── data_ingestion.py
│   ├── data_cleaning.py
│   └── data_loading.py
│
├── database/
│   └── mutual_fund.db
│
├── sql/
│   └── queries.sql
│
├── notebooks/
│   └── analysis.ipynb
│
└── README.md
```

## Workflow

### 1. Data Ingestion
- Read all raw CSV files
- Validate dataset structure
- Check missing values

### 2. Data Cleaning
- Remove duplicates
- Handle null values
- Standardize formats

### 3. Data Loading
- Load cleaned CSV files into SQLite database
- Create 10 tables automatically

### 4. SQL Analysis
Performed:
- Filtering
- Sorting
- Aggregation
- Group By
- Joins
- Performance analysis

## Datasets Used
1. Fund Master
2. NAV History
3. AUM by Fund House
4. Monthly SIP Inflows
5. Category Inflows
6. Industry Folio Count
7. Scheme Performance
8. Investor Transactions
9. Portfolio Holdings
10. Benchmark Indices

## Technologies Used
- Python
- Pandas
- SQLite
- SQL
- Jupyter Notebook
- VS Code

## Key Insights
- Fund performance comparison
- Category-wise inflow trends
- Investor transaction tracking
- Portfolio allocation analysis
- NAV growth tracking

## Output
- SQLite Database (`mutual_fund.db`)
- SQL Queries (`queries.sql`)
- Analysis Notebook (`analysis.ipynb`)