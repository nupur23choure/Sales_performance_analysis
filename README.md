# Sales Performance Analysis

## Project Overview

This project analyses sales data to understand business performance across products, regions, sales channels, and time periods.

The objective is to identify revenue trends, evaluate product performance, compare regional and channel performance, and generate actionable business insights using Python, Pandas, and MySQL.

## Business Objectives

- Identify products generating the highest revenue.
- Analyse units sold by each product.
- Compare revenue across different regions.
- Evaluate sales performance across different channels.
- Identify high- and low-performing months.
- Calculate each region's contribution to total revenue.
- Identify top-performing product and region combinations.
- Develop data-driven business recommendations.

## Dataset Information

The dataset contains **100 sales transactions and 7 columns**.

| Column | Description |
|---|---|
| date | Transaction date |
| region | Sales region |
| product | Product name |
| channel | Sales channel |
| units | Number of units sold |
| unit_price | Price per unit |
| revenue | Total transaction revenue |

### Data Quality Checks

- Checked for missing values.
- Checked for duplicate records.
- Validated revenue using `units × unit_price`.
- Checked for zero and negative values in units, unit price, and revenue.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Python | Data analysis |
| Pandas | Data manipulation and aggregation |
| MySQL | SQL-based business analysis |
| MySQL Workbench | Database management and query execution |
| GitHub | Project documentation and version control |

## Key Performance Indicators (KPIs)

| KPI | Result |
|---|---:|
| Total Revenue | 119,231.42 |
| Total Units Sold | 1,957 |
| Total Transactions | 100 |
| Average Transaction Revenue | 1,192.31 |
| Unique Products | 8 |

## Key Business Insights

### 1. Product Performance

- Mechanical Keyboard generated the highest revenue of **32,616.65**.
- Laptop Stand recorded the highest sales volume with **405 units**.
- Standing Desk recorded the lowest sales volume with **29 units**.

### 2. Regional Performance

- North America generated the highest revenue of **32,212.07**.
- LATAM generated the lowest revenue of **15,893.23**.
- North America contributed approximately **27.02%** of total revenue.

### 3. Sales Channel Performance

- Online generated the highest revenue of **45,318.89**.
- Retail generated **39,448.39**.
- Partner generated **34,464.14**.

### 4. Monthly Sales Performance

- September recorded the highest combined monthly revenue across all years, at **24,181.03**.
- April recorded the lowest combined monthly revenue, at **3,471.10**.

## Business Recommendations

- Monitor Laptop Stand inventory because it has the highest unit sales.
- Investigate the pricing and demand factors contributing to Mechanical Keyboard's high revenue.
- Analyse the factors behind North America's strong revenue performance.
- Evaluate the Online channel and identify opportunities to improve other sales channels.
- Investigate lower-performing products and months before deciding on pricing or promotional changes.

**Limitation:** Product cost data is not available, so profitability and profit margins cannot be calculated from this dataset.

## Project Structure

```text
Sales_performance_analysis/
│
├── README.md
│
├── data/
│   └── sales_transactions-100.csv
│
├── doc/
│   └── Project documentation
│
├── python/
│   └── sale_analysis.py
│
└── sql/
    └── Sales_performance_analysis.sql
```

## Learning Outcomes

Through this project, I practised:

- Inspecting and validating data using Python.
- Manipulating and aggregating data using Pandas.
- Writing SQL queries using SELECT, WHERE, GROUP BY, HAVING, ORDER BY, and aggregate functions.
- Using SQL window functions to calculate regional revenue contribution.
- Analysing business performance through KPIs.
- Converting numerical findings into business insights and recommendations.

## Conclusion

This project provided practical experience in analysing sales data using Python and MySQL. It helped identify top-performing products, regions, and sales channels, while translating the findings into business recommendations.

**Project Status:** Python data analysis and MySQL analysis completed.

**Future Scope:** Develop an interactive Power BI dashboard to visualise sales performance and business KPIs.
