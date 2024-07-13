-- Середня кількість товарів у чеку у кожному тц
SELECT 
	shopping_mall,
	ROUND(AVG(quantity), 2) AS avg_quantity
FROM shopping_data
GROUP BY shopping_mall