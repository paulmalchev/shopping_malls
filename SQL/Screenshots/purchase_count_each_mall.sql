SELECT
	shopping_mall,
	category,
	COUNT(*) AS purchase_count
FROM shopping_data
GROUP BY shopping_mall, category
ORDER BY purchase_count