# Sales Analysis Project - Progress Report

## 1. Project Overview
- Dataset: Sales Data (100 rows, 7 columns)
- Objective: To analyze sales performance, check data quality, and provide business recommendations.

## 2. Data Understanding & Quality Check (Step 1 to Step 3)
- **Total Records:** 100 rows
- **Total Columns:** 7 columns
- **Missing Values:** 0 missing values found.
- **Duplicate Records:** 0 complete duplicate rows found.
 
- **Unique Categories Identified:**
  - Regions: 5 (LATAM, EMEA, North America, APAC, ANZ)
  - Products: 8 unique products
  - Channels: 3 (Partner, Retail, Online)

"Initial data quality assessment identified 100 records and 7 columns. No missing values or duplicate records were detected. The dataset is ready for further validation and analysis."
 
## 3. Revenue Validation (Data Quality Check)
- **Objective:** To verify if the revenue recorded in the dataset is mathematically correct based on `Units × Unit_Price`.
- **Initial Finding:** When comparing expected revenue directly with the existing revenue column, 19 records initially showed mismatches.
- **Deep-Dive Investigation:** 
  - Calculated the absolute difference between `Expected_Revenue` and `revenue`.
  - Found that the differences were extremely tiny (floating-point precision issues ranging from $10^{-13}$ to $10^{-14}$).
- **Final Conclusion:** 
  - When rounded to two decimal places, **100% of the records match correctly**. 
  - There are no actual business calculation errors in the revenue column. The data is reliable for further analysis and reporting.

  ## 5. Unusual Values & Data Cleaning Checks
- **Objective:** To identify any anomalies, corrupt records, or suspicious data points (such as zero/negative quantities, zero/negative unit prices, or negative revenue) that could distort the final analysis.
- **Checks Performed:**
  - Zero Units: Checked for orders with 0 quantity.
  - Negative Units: Checked for invalid return/negative quantities.
  - Zero Unit Price: Checked for items listed with 0 price.
  - Negative Unit Price: Checked for invalid negative pricing.
  - Negative Revenue: Checked for financial calculation errors or data corruption.
- **Findings:**
  - **Zero units found:** 0
  - **Negative units found:** 0
  - **Zero unit prices found:** 0
  - **Negative unit prices found:** 0
  - **Negative revenue found:** 0
- **Business Conclusion:** 
  - The dataset is clean of any basic data entry errors regarding quantities, prices, and revenue. No records need to be dropped or modified, and the data is fully reliable to proceed with deeper business analysis.

  **Business Questions**

 **Which product generates the highest total revenue for our company?**

 **Objective**: Determine the top-performing product based on cumulative sales revenue across all transactions, rather than just looking at individual sales slips.
 **Top Performers**: The Mechanical Keyboard is our highest-revenue generator at 32,616.65, closely followed by the USB-C Hub (32,431.84). Together, these two products drive a significant share of our total sales.

 **Low Performers**: The Wireless Mouse generated the lowest total revenue at 2,847.04.

 **Recommendation**: While high revenue indicates strong customer demand and sales volume, management should also examine profit margins for these items to ensure our top-revenue products are equally profitable.

 **Which region generates the highest total revenue?**

**Objective**: Determine the top-performing geographical region based on cumulative sales revenue to guide regional marketing and resource allocation.
**Top-Performing Market**: North America is our highest-revenue region, generating 32,212.07, closely followed by ANZ at 29,255.40. Together, these two markets account for the largest share of our global sales.

**Growth Opportunity**: LATAM recorded the lowest revenue at 15,893.23, indicating potential room for market expansion or targeted promotional campaigns in that region.

**Recommendation:** Sales and marketing strategies should continue supporting strong performance in North America and ANZ while investigating barriers to growth in underperforming regions like LATAM.

**which channel generates highest revenue?**
"Online is the highest-revenue sales channel, generating 45,318.89, followed by Retail and Partner. This suggests that online sales are an important revenue source for the company."

One important distinction: Highest revenue does not necessarily mean the highest number of orders. We need to analyse order counts or transaction counts to confirm that.

**most units of the products**

Laptop Stand is the best-selling product by quantity, with 405 units sold.

Portable SSD is the second-best-selling product, with 386 units.

Standing Desk has the lowest sales quantity, with only 29 units.

The business should review inventory planning for Laptop Stands and investigate why Standing Desk sales are low.

**highest average product price**
Mechanical Keyboard has the highest average selling price at 210.43.

Laptop Stand has the lowest average selling price at 14.78.

Standing Desk is the second most expensive product on average.

**What percentage of total revenue comes from each region?**
North America contributes the highest revenue share at 27.02%.

ANZ is the second-largest contributor at 24.54%.

LATAM contributes the lowest share at 13.33%.

North America and ANZ together contribute approximately 51.55% of total revenue.