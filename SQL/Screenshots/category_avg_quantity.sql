-- Середня кількість товарів, яку купують у кожній категорії
SELECT 
	category,
	ROUND(AVG(quantity), 2) AS avg_quantity
FROM shopping_data
GROUP BY category