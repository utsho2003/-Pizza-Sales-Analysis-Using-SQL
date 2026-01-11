# 🍕 Pizza-Sales-Business-Analytics-using-SQL

This project applies SQL-based analytics to a real-world pizza restaurant sales dataset. It uses structured queries, aggregations, and time-based analysis to uncover business insights related to customer demand, peak periods, revenue performance, and product popularity—making it ideal for technical interviews and GitHub portfolios.

**1️⃣ Project Title**

Pizza Sales Business Analytics using SQL

**2️⃣ Project Description**

This project demonstrates the application of SQL for analyzing transactional sales data from a pizza restaurant. The objective is to transform raw order-level data into actionable business insights using SQL aggregation, date-time functions, and grouping logic.

The analysis focuses on understanding customer ordering behavior, peak business periods, best and worst-selling pizzas, revenue contribution, and average order value (AOV).
This project is suitable for academic evaluation, data analyst interviews, and portfolio showcase.

**3️⃣ Problem Statement**

Pizza restaurants generate large volumes of transactional data daily. Without structured analysis, it becomes difficult to:

Identify peak business hours

Optimize staffing and inventory

Understand product-level performance

Track revenue trends

This project solves these challenges by using SQL to answer key business questions such as:

When is the restaurant busiest?

Which pizzas sell the most and least?

How much does each category and size contribute to revenue?

What is the average order value?

**4️⃣ Dataset Overview**

The dataset represents pizza sales transactions where each row corresponds to a pizza item within an order.

Key Columns:

order_id, order_date, order_time

pizza_name, pizza_type, pizza_size

quantity, unit_price, total_price

📊 Dataset File:
👉 Pizza Sales.csv

**5️⃣ Database Structure**

Single fact table: pizza_sales

Granularity: One row per pizza item per order

Time-based and categorical attributes enable trend and performance analysis

**6️⃣ Analytical Objectives**

Identify busiest days and peak ordering hours

Analyze pizza demand during peak periods

Determine best-selling and worst-selling pizzas

Calculate Average Order Value (AOV)

Analyze revenue trends

Evaluate pizza size and category performance

**7️⃣ SQL Concepts Demonstrated**

Aggregate functions: SUM(), COUNT(), AVG()

Date & time functions: HOUR(), DAYNAME()

Grouping & sorting using GROUP BY, ORDER BY

Business-focused analytical logic

📌 **Complete SQL Query Script:** 
👉 **[Advanced_SQL_Project.sql](pizza_sales.sql)**
### 📊 Query Output Snapshots

**📊 Query Output Snapshots**

Query 1 – Busiest Day & Peak Hour
# Query 1 - Output Screenshot ![Query Output - 1](/O_1.png)

Query 2 – Orders Trend by Day & Hour
# Query 2 - Output Screenshot ![Query Output - 2](/O_2.png)

Query 3 – Best & Worst Selling Pizzas
# Query 3 - Output Screenshot ![Query Output - 3](/O_3.png)

Query 4 – Revenue Trend Analysis
# Query 4 - Output Screenshot ![Query Output - 4](/O_4.png)

Query 5 – Average Order Value (AOV)
# Query 5 - Output Screenshot ![Query Output - 5](/O_5.png)

Query 6.1 – Category Contribution
# Query 6.1 - Output Screenshot ![Query Output - 6.1](/O_6_CATEGORY_CONTRIBUTION.png)

Query 6.2 – Pizza Size Performance
# Query 6.2 - Output Screenshot ![Query Output - 6.2](/O_6_SIZE_PERFORMANCE.png)

Query 6.3 – Revenue Contribution Analysis
# Query 6.3 - Output Screenshot ![Query Output - 6.3](/O_6_revenue.png)

**🔑 10️⃣ Key Insights Derived from Analysis**

Peak Periods: Orders peak during specific hours and weekends

Top Performers: Certain pizzas dominate overall sales

Low Performers: Some pizzas contribute minimal revenue

Revenue Drivers: Large-size pizzas and premium categories generate higher revenue

Customer Behavior: Ordering patterns vary significantly by time and day

These insights help improve inventory planning, staff allocation, and menu optimization.

**11️⃣ Technology Stack**

Database: MySQL

Language: SQL

Data Format: CSV

Tools: MySQL Workbench

Version Control: Git & GitHub

Domain: Retail & Food Business Analytics

**12️⃣ Project Usage**

This project can be used for:

SQL & Data Analyst interviews

Academic assignments

Business analytics demonstrations

GitHub portfolio showcase

**13️⃣ How to Run the Project**

Create a database in MySQL

Import Pizza Sales.csv into the pizza_sales table

Execute queries from pizza_sales.sql

Review output images and insights

**14️⃣ Disclaimer**

This dataset is used strictly for educational and analytical purposes.
