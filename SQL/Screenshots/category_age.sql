SELECT
	category,
	ROUND(AVG(age), 2) as avg_age
FROM shopping_data
GROUP BY 1

