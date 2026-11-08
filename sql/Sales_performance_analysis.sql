-- =====================================================
-- PROJECT: SALES PERFORMANCE ANALYSIS
-- DATABASE: sales_analysis
-- TABLE: sales_data
-- PURPOSE: Analyse sales performance across products,
-- regions, sales channels and time periods.
-- =====================================================

-- 1. DATABASE AND TABLE VERIFICATION

USE sales_analysis;

-- Check table structure
DESCRIBE sales_data;


-- 2. DATA INSPECTION

-- View first 10 records
SELECT *
FROM sales_data
LIMIT 10;


-- 3. PRODUCT REVENUE ANALYSIS
-- 1. Which product generates the highest total revenue?
select product, round(sum(revenue),2) as total_revenue_by_product
from sales_data
group by product
order by total_revenue_by_product desc
limit 1;


-- 4. REGION REVENUE ANALYSIS
-- 2. Which region generates the highest total revenue?
select region, round(sum(revenue),2) as total_revenue_by_region
from sales_data
group by region
order by total_revenue_by_region desc;


-- 5. SALES CHANNEL ANALYSIS
-- 3. Which channel generates the highest total revenue
select channel, round(sum(revenue),2) as total_revenue_by_channel
from sales_data
group by channel
order by total_revenue_by_channel desc;


-- 6. MONTHLY REVENUE ANALYSIS
-- 4.Which month has the highest total revenue?
select date_format(`date`, "%Y-%m") as month_from_date, round(sum(revenue),2) as total_revenue_by_month
from sales_data
group by date_format(`date`, "%Y-%m")
order by total_revenue_by_month desc;


-- 7. PRODUCT UNITS AND AVERAGE SELLING PRICE
-- 5.most units of the products
select product, sum(units) as total_units
from sales_data
group by product
order by total_units desc;

-- 8. REGION REVENUE CONTRIBUTION
-- 7.What percentage of total revenue comes from each region?
select region, round(sum(revenue) * 100 / sum(sum(revenue))over(),2) as percent_rev
from sales_data
group by region
order by percent_rev desc;


-- 9. TOP REGION-PRODUCT COMBINATIONS
-- 8. Which region and product combination generates the highest revenue?

select region, product, sum(revenue) as Total_revenue from sales_data
group by region,product
order by Total_revenue desc
limit 3;

-- 10. TOP 5 TRANSACTIONS
-- 9. Find the Top 5 Highest Sales Transactions
select product, revenue, date, region, units
from sales_data
order by revenue desc
limit 5;


-- 11. OVERALL BUSINESS KPIs
-- 10. What are the overall sales KPIs?
select sum(revenue) as Total_revenue,
 sum(units) as Total_units,
count(*) as Total_transaction,
avg(revenue) as average_transaction_rev,
count(distinct product) as unique_product
from sales_data;