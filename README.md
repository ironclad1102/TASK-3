
# SQL for Data Analysis - E-commerce Dataset

## Overview
This project demonstrates basic SQL data analysis techniques using a sample e-commerce database (`ecommerce_sample.sqlite`). The database includes tables for customers, products, orders, and order details.

## Tools Used
- **SQLite** with **DB Browser for SQLite** (for querying)
- SQL language

## Tasks Completed
1. **SELECT + WHERE + ORDER BY**  
   Retrieved orders with total amounts greater than $200, sorted in descending order.

2. **JOIN**  
   Combined customer and order data to show customer names with their order totals.

3. **Subquery**  
   Listed products that were ordered more than once using a subquery with `GROUP BY` and `HAVING`.

4. **Aggregate Function**  
   Calculated the average total value of all orders using `AVG()`.

5. **Create a View**  
   Created a view (`HighValueOrders`) showing orders above $500 for easier future querying.

6. **Indexing for Optimization**  
   Added an index on `customer_id` in the `Orders` table to optimize JOIN performance.

## Files Included
- `ecommerce_sample.sqlite`: The SQLite database file.
- `data_analysis.sql`: All queries used in the task.
- Screenshots (not included here): Query results for documentation.

## How to Use
1. Open the `ecommerce_sample.sqlite` file in DB Browser for SQLite.
2. Load and run queries from `data_analysis.sql` using the "Execute SQL" tab.
3. Review outputs or extend the analysis as needed.


