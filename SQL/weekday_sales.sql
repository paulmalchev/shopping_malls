-- Покупки згруповані по дням неділі
SELECT 
	CASE
        WHEN EXTRACT(DOW FROM invoice_date) = 0 THEN 7
        ELSE EXTRACT(DOW FROM invoice_date)
    END AS day_num,
	TO_CHAR(invoice_date, 'Day') AS day,
	COUNT(invoice_no) AS purchase_count,
	SUM(quantity) AS item_quantity,
	SUM(price_usd) * SUM(quantity) AS total_revenue,
	ROUND(AVG(price_usd), 2) AS avg_check
FROM shopping_data
GROUP BY day_num, day
ORDER BY day_num