-- Середня ціна товарів оплачена різними методами оплати
SELECT
	payment_method,
	ROUND(AVG(price_usd), 2) AS avg_amount
FROM shopping_data
GROUP BY payment_method