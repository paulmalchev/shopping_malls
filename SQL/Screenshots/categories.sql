SELECT 
	category,
	ROUND(AVG(price_usd), 2) AS avg_price, 
	SUM(quantity) AS sold_quantity,
	SUM(price_usd * quantity) AS total_revenue
FROM shopping_data
GROUP BY category
ORDER BY total_revenue DESC