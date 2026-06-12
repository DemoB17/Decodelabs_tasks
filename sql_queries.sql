      Payment Method Analysis
SELECT payment_method,
       COUNT(*) AS transactions,
       SUM(total_price) AS total_revenue
FROM sales_data
GROUP BY payment_method
ORDER BY total_revenue DESC;

      Yearly Sales Analysis
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    SUM(revenue) AS yearly_revenue
FROM sales_data
GROUP BY year
ORDER BY year;

      Customer Revenue Analysis
SELECT customer_id,
       SUM(total_price) AS total_spent
FROM sales_data
GROUP BY customer_id
ORDER BY total_spent DESC;

      Total Revenue
SELECT SUM(total_price) AS total_revenue
FROM sales_data;

      Order Status Analysis
SELECT
    Order_Status,
    COUNT(*) AS Orders
FROM sales_data
GROUP BY Order_Status;

      
