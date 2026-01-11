USE project;
SHOW TABLES;
SELECT * FROM pizza_sales;
DESC pizza_sales;
DROP TABLE pizza_sales;
-- 1. What days and times do we tend to be busiest?
 -- ==> 

SELECT
    DAYNAME(order_date) AS busiest_day,
    CONCAT(HOUR(order_time),':00') AS busiest_hour
    -- COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
WHERE order_time IS NOT NULL
GROUP BY busiest_day , busiest_hour
ORDER BY COUNT(DISTINCT order_id) DESC
LIMIT 1;


-- 2. How many pizzas are we making during peak periods?
-- ==>
SELECT
	CONCAT(HOUR(order_time),':00') AS hour,
    SUM(quantity) AS total_pizza_made
    FROM pizza_sales
    GROUP BY hour
    ORDER BY total_pizza_made DESC;
    
-- 3. What are our best- and worst-selling pizzas?
-- ==>

WITH pizza_totals AS (
    SELECT
        pizza_name,
        SUM(quantity) AS total_pizzas_sold
    FROM pizza_sales
    GROUP BY pizza_name
)
(
    SELECT 'Best Selling' AS category, pizza_name, total_pizzas_sold
    FROM pizza_totals
    ORDER BY total_pizzas_sold DESC
    LIMIT 1
)
UNION ALL
(
    SELECT 'Worst Selling' AS category, pizza_name, total_pizzas_sold
    FROM pizza_totals
    ORDER BY total_pizzas_sold ASC
    LIMIT 1
);

-- 4. What is our average order value (AOV)?
-- ==>
SELECT 
    ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM pizza_sales;

-- 5. How well are we utilizing our seating capacity (15 tables / 60 seats)?
-- ==>
SELECT 
	order_date,
    COUNT(DISTINCT order_id) AS total_orders,
    15 as total_table,
	ROUND((COUNT(DISTINCT order_id)/15) * 100 , 2) AS table_utilization_percent
FROM pizza_sales
GROUP BY order_date
ORDER BY order_date;

-- 6. Additional insights: revenue trend, pizza size performance, category contribution.
-- ==>
-- REVENUE TREND --
SELECT 
	order_date ,
    SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY order_date
ORDER BY order_date;

-- PIZZA SIZE PERFORMANCE -- 
SELECT 
	pizza_size,
    SUM(quantity) AS total_pizza,
    SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_pizza DESC ;

-- category contribution -- 
SELECT
    pizza_category,
    ROUND(SUM(total_price),2) AS revenue,
    ROUND(
        SUM(total_price) * 100.0 /
        (SELECT SUM(total_price) FROM pizza_sales),
        2
    ) AS percentage_contribution
FROM pizza_sales
GROUP BY pizza_category
ORDER BY revenue DESC;

    



    




    






    
	








 