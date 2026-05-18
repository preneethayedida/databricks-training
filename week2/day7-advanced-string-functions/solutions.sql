-- =====================================================
-- WEEK 2 - DAY 7 SOLUTIONS
-- =====================================================

-- 1
SELECT email, INSTR(email, '@') FROM employees;

-- 2
SELECT email, LOCATE('.', email) FROM employees;

-- 3
SELECT REPLACE(department, 'Data', 'Big Data') FROM employees;

-- 4
SELECT full_name, REVERSE(full_name) FROM employees;

-- 5
SELECT LPAD(emp_id, 5, '0') FROM employees;

-- 6
SELECT RPAD(city, 15, '*') FROM employees;

-- 7
SELECT TRIM(REPLACE(city, ' ', '')) FROM employees;

-- 8
SELECT full_name, IFNULL(remarks, 'No remarks') FROM employees;

-- 9
SELECT full_name, COALESCE(remarks, 'N/A') FROM employees;

-- 10
SELECT FIND_IN_SET('Analytics', 'Data,Analytics,AI');

-- 11
SELECT REPLACE(full_name, ' ', '_') FROM employees;

-- 12
SELECT city, REVERSE(city) FROM employees;

-- 13
SELECT UPPER(email) FROM employees;

-- 14
SELECT CONCAT(full_name, ' - ', email) FROM employees;

-- 15
SELECT SUBSTRING_INDEX(email, '@', -1) AS domain_name FROM employees;
