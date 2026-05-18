-- =====================================================
-- WEEK 1 - DAY 6 SQL SOLUTIONS
-- =====================================================

-- 1
SELECT CURDATE();

-- 2
SELECT CURTIME();

-- 3
SELECT CURRENT_TIMESTAMP();

-- 4
SELECT YEAR(order_date)
FROM orders;

-- 5
SELECT MONTH(order_date)
FROM orders;

-- 6
SELECT DAY(order_date)
FROM orders;

-- 7
SELECT EXTRACT(YEAR FROM order_date)
FROM orders;

-- 8
SELECT EXTRACT(MONTH FROM order_date)
FROM orders;

-- 9
SELECT MONTHNAME(order_date)
FROM orders;

-- 10
SELECT DAYNAME(order_date)
FROM orders;

-- 11
SELECT WEEKDAY(order_date)
FROM orders;

-- 12
SELECT DAYOFWEEK(order_date)
FROM orders;

-- 13
SELECT order_id, order_date
FROM orders
WHERE DAYNAME(order_date) IN ('Saturday', 'Sunday');

-- 14
SELECT order_id, order_date
FROM orders
WHERE DAYOFWEEK(order_date) BETWEEN 2 AND 6;

-- 15
SELECT order_date,
DATE_ADD(order_date, INTERVAL 5 DAY)
FROM orders;

-- 16
SELECT order_date,
DATE_SUB(order_date, INTERVAL 3 DAY)
FROM orders;

-- 17
SELECT DATE_ADD(order_date, INTERVAL 1 MONTH)
FROM orders;

-- 18
SELECT DATE_SUB(order_date, INTERVAL 2 MONTH)
FROM orders;

-- 19
SELECT DATE_ADD(order_date, INTERVAL 1 YEAR)
FROM orders;

-- 20
SELECT
order_id,
DATEDIFF(delivery_date, order_date) AS delivery_days
FROM orders;

-- 21
SELECT
TIMESTAMPDIFF(DAY, order_date, delivery_date) AS days_diff,
TIMESTAMPDIFF(MONTH, order_date, delivery_date) AS months_diff
FROM orders;

-- 22
SELECT LAST_DAY(order_date)
FROM orders;

-- 23
SELECT DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY)
FROM orders;

-- 24
SELECT DATE_FORMAT(order_date, '%d-%m-%Y')
FROM orders;

-- 25
SELECT DATE_FORMAT(order_date, '%M %d, %Y')
FROM orders;

-- 26
SELECT DATE_FORMAT(order_timestamp, '%d-%m-%Y %H:%i:%s')
FROM orders;

-- 27
SELECT STR_TO_DATE('15-01-2024', '%d-%m-%Y');

-- 28
SELECT *
FROM orders
WHERE MONTH(order_date) = 1;

-- 29
SELECT *
FROM orders
WHERE MONTHNAME(order_date) = 'February';

-- 30
SELECT order_date,
CASE
WHEN MONTH(order_date) >= 4
THEN CONCAT(YEAR(order_date), '-', YEAR(order_date)+1)
ELSE CONCAT(YEAR(order_date)-1, '-', YEAR(order_date))
END AS financial_year
FROM orders;

-- 31
SELECT *
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 7 DAY;

-- 32
SELECT *
FROM orders
WHERE DATE(order_timestamp) = CURDATE();
