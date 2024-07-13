SELECT 
	category,
	gender,
	COUNT(quantity) AS quantity
FROM shopping_data
GROUP BY 1, 2
ORDER BY category, quantity DESC
