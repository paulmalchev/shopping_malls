-- Середня ціна товару по кожній категорії(usd)
SELECT 
	category,
	ROUND(AVG(price_usd), 2) AS avg_usd_price
FROM shopping_data
GROUP BY category