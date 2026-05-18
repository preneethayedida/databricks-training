-- =====================================================
-- WEEK 2 - DAY 6 SOLUTIONS
-- =====================================================

-- 1
SELECT full_name, LENGTH(full_name) FROM employees;

-- 2
SELECT full_name, CHAR_LENGTH(full_name) FROM employees;

-- 3
SELECT UPPER(department) FROM employees;

-- 4
SELECT LOWER(city) FROM employees;

-- 5
SELECT TRIM(full_name) FROM employees;

-- 6
SELECT LTRIM(full_name) FROM employees;

-- 7
SELECT RTRIM(full_name) FROM employees;

-- 8
SELECT CONCAT(full_name, ' - ', department) AS emp_details FROM employees;

-- 9
SELECT CONCAT_WS(' | ', emp_id, full_name, city) FROM employees;

-- 10
SELECT SUBSTRING(email, 1, 7) FROM employees;

-- 11
SELECT SUBSTR(email, 1, 5) FROM employees;

-- 12
SELECT MID(email, 1, 6) FROM employees;

-- 13
SELECT LEFT(full_name, 4) FROM employees;

-- 14
SELECT RIGHT(city, 3) FROM employees;
