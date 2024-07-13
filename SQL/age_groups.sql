SELECT 
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 31 THEN '26-31'
        WHEN age BETWEEN 32 AND 40 THEN '32-40'
        WHEN age BETWEEN 41 AND 59 THEN '41-59'
        ELSE '60+'
    END AS age_group,
    COUNT(DISTINCT customer_id) AS customer_count,
    ROUND(AVG(price_usd * quantity), 2) AS average_сheck,
    ROUND(SUM(price_usd * quantity), 2) AS total_amount
FROM shopping_data
GROUP BY age_group
ORDER BY age_group;