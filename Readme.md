# Financial Performance Analysis & Executive Dashboard Capstone

## Overview
This repository contains the complete end-to-end code, database schemas, statistical evaluations, and executive dashboard artifacts for the **Financial Performance Analysis Capstone Project**. 

The project ingests raw operational data from a SQL Server relational database, cleans and analyzes it using Python (Pandas/SciPy/Seaborn), and powers a professional, executive-ready Tableau dashboard to monitor revenue, expenses, profit variance, and business unit performance.

---

## Repository Structure
```text
├── SQL/
│   ├── SQLQuery1.sql          # DDL for Financial_Transactions table & foreign keys
│   ├── SQLQuery2.sql          # Validation & sampling queries
│   └── SQLQuery3.sql          # DDL for Customers, Vendors, Headcount, & Budget tables
├── Python/
│   └── financial_analysis.ipynb # Data wrangling, EDA, anomaly detection, & ANOVA/T-tests
├── Tableau/
│   └── Financial_Performance.twbx # Executive dashboard workbook (KPIs, trend lines, filters)
├── Report/
│   └── financial_performance_report.html # Final 2-page executive summary & report
└── README.md                  # Project documentation
```

---

## Key Project Components

### 1. Database Design & SQL Ingestion
* **Relational Schema:** Built using SQL Server (`RISHIRAJ\SQLEXPRESS`) with strict Primary Key (PK) and Foreign Key (FK) relationships across five core tables: `Customers`, `Vendors`, `Headcount`, `Budget`, and `Financial_Transactions`.
* **Data Integrity:** Implemented `CHECK` constraints on status fields, active flags, and calendar months, alongside precise numeric typing (`DECIMAL(15,2)`) for monetary amounts.

### 2. Exploratory Data Analysis & Statistical Testing (Python)
* **Data Wrangling:** Handled missing values in nullable foreign keys and verified record counts across all 10,400 transaction rows.
* **Hypothesis Testing (`scipy.stats`):**
  * **ANOVA Test:** Evaluated monthly expenses across business units (Enterprise, Online, Retail). *Result:* $p = 0.7238$ (Fail to reject $H_0$; uniform cost distribution).
  * **Paired T-Test:** Compared actual profit against budgeted profit targets. *Result:* $p = 0.0000$ (Reject $H_0$; statistically significant profit outperformance).

### 3. Executive Dashboard (Tableau)
* **KPI Scorecard:** Real-time tracking of Actual Profit (**₹69.68 Cr**), Total Revenue (**₹86.46 Cr**), and Total Expenses (**₹16.77 Cr**).
* **Monthly Trends:** Dual-measure time-series line chart tracking financial velocity over the fiscal year.
* **Interactivity:** Global **Business Unit** and **Region** filter integration for executive slicing.

---

## How to Run the Project

1. **Database Setup:** Execute `SQLQuery3.sql` followed by `SQLQuery1.sql` in your SQL Server Management Studio (SSMS) instance to create the schema.
2. **Analysis:** Open the Python analysis environment and execute data ingestion scripts using SQLAlchemy to connect to your local server.
3. **Dashboard:** Open `Financial_Performance.twbx` in Tableau Desktop to explore the executive visualizations and interactive filters.