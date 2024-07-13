-- Кількість товарів у чеку
SELECT
	quantity,
	COUNT(invoice_no) AS purchase
FROM shopping_data
GROUP BY quantity
ORDER BY quantity