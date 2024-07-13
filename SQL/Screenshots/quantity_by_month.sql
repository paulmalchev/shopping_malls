SELECT
	EXTRACT(YEAR FROM invoice_date) AS year,
	EXTRACT(MONTH FROM invoice_date) AS month_number,
	CASE 
        WHEN EXTRACT(MONTH FROM invoice_date) = 1 THEN 'January'
        WHEN EXTRACT(MONTH FROM invoice_date) = 2 THEN 'February'
        WHEN EXTRACT(MONTH FROM invoice_date) = 3 THEN 'March'
        WHEN EXTRACT(MONTH FROM invoice_date) = 4 THEN 'April'
        WHEN EXTRACT(MONTH FROM invoice_date) = 5 THEN 'May'
        WHEN EXTRACT(MONTH FROM invoice_date) = 6 THEN 'June'
        WHEN EXTRACT(MONTH FROM invoice_date) = 7 THEN 'July'
        WHEN EXTRACT(MONTH FROM invoice_date) = 8 THEN 'August'
        WHEN EXTRACT(MONTH FROM invoice_date) = 9 THEN 'September'
        WHEN EXTRACT(MONTH FROM invoice_date) = 10 THEN 'October'
        WHEN EXTRACT(MONTH FROM invoice_date) = 11 THEN 'November'
        WHEN EXTRACT(MONTH FROM invoice_date) = 12 THEN 'December'
    END AS month,
	SUM(quantity) AS items_quantity
FROM shopping_data
	
GROUP BY year, month_number
ORDER BY year, month_number