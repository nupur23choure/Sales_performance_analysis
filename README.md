# Sales Performance Analysis

## Project Overview

This project focuses on analysing sales data to understand business performance across different products, regions, sales channels, and time periods.

The objective is to identify revenue trends, top-performing products, regional performance, and sales patterns to generate meaningful business insights and recommendations.

This project demonstrates the use of **Python, Pandas, and MySQL** for data cleaning, validation, data analysis, and business problem-solving.

## Business Objectives

- Identify the products generating the highest revenue.
- Analyse total units sold by each product.
- Compare revenue performance across different regions.
- Evaluate sales performance across different channels.
- Identify high-revenue months and monthly sales patterns.
- Calculate each region's contribution to total revenue.
- Identify top-performing product and region combinations.
- Generate actionable business recommendations.

## Dataset Information

The dataset contains 100 sales transactions and 7 columns.

| Column | Description |
|---|---|
| date | Date of the transaction |
| region | Sales region |
| product | Product name |
| channel | Sales channel |
| units | Number of units sold |
| unit_price | Price per unit |
| revenue | Total revenue from the transaction |

**Data quality checks performed:**
- Checked missing values.
- Checked duplicate records.
- Validated revenue using units × unit price.
- Checked zero and negative values in units, unit price, and revenue.

## Tools and Technologies

- **Python:** Data analysis
- **Pandas:** Data manipulation and analysis
- **MySQL:** SQL queries and business analysis
- **MySQL Workbench:** Database management and query execution
- **GitHub:** Project documentation and version control

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
- Mechanical Keyboard generated the highest revenue of 32,616.65.
- Laptop Stand recorded the highest sales volume with 405 units.
- Standing Desk recorded the lowest sales volume with 29 units.

### 2. Regional Performance
- North America generated the highest revenue of 32,212.07.
- LATAM generated the lowest revenue of 15,893.23.
- North America contributed approximately 27.02% of total revenue.

### 3. Sales Channel Performance
- Online was the highest revenue-generating channel with 45,318.89.
- Retail generated 39,448.39.
- Partner generated 34,464.14.

### 4. Monthly Sales Performance
- September recorded the highest combined revenue across all years, at 24,181.03.
- April recorded the lowest combined monthly revenue, at 3,471.10.

## Business Recommendations

- Monitor Laptop Stand inventory because it has the highest unit sales.
- Investigate why Mechanical Keyboard generates high revenue despite lower unit sales.
- Analyse the factors behind North America's strong revenue performance.
- Evaluate the Online channel's performance and identify opportunities to improve other channels.
- Investigate lower-performing products and months before deciding on pricing or promotional changes.

*Note: These are initial recommendations based on the available sales data. Profitability cannot be evaluated because product cost data is not available.*

## Project Structure

```text
Sales-Performance-Analysis/
│
├── README.md
├── Sales_performance_analysis.sql
├── sale_analysis.py
└── sales_transactions-100.csv
```


## Learning Outcomes

Through this project, I practised:

- Data inspection and validation using Python.
- Data aggregation and analysis using Pandas.
- Writing SQL queries using SELECT, WHERE, GROUP BY, HAVING, ORDER BY, and aggregate functions.
- Using window functions to calculate regional revenue contribution.
- Translating numerical findings into business insights and recommendations.

## Conclusion

This project helped me understand how sales data can be used to evaluate business performance, identify important trends, and support data-driven business decisions.
