SELECT 
	age, 
	COUNT(DISTINCT customer_id) AS count, 
	ROUND(AVG(price_usd * quantity), 2) AS avg_check,
	SUM(price_usd * quantity) AS total_amount
FROM shopping_data
GROUP BY age