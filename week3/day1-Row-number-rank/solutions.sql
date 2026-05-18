-- =====================================================
-- WEEK 3 - DAY 1 SOLUTIONS
-- =====================================================

--------------------------------------------------------
-- ROW_NUMBER()
--------------------------------------------------------

-- 1
SELECT
    emp_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;

--------------------------------------------------------

-- 2
SELECT
    emp_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_num
FROM employees;

--------------------------------------------------------

-- 3
SELECT
    emp_name,
    join_date,
    ROW_NUMBER() OVER (
        ORDER BY join_date DESC
    ) AS row_num
FROM employees;

--------------------------------------------------------

-- 4
SELECT
    emp_name,
    department,
    join_date,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY join_date ASC
    ) AS row_num
FROM employees;

--------------------------------------------------------

-- 5
SELECT
    emp_name,
    salary,
    ROW_NUMBER() OVER (
        ORDER BY salary ASC
    ) AS row_num
FROM employees;

--------------------------------------------------------

-- 6
SELECT
    emp_name,
    department,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY emp_name ASC
    ) AS row_num
FROM employees;

--------------------------------------------------------
-- RANK()
--------------------------------------------------------

-- 7
SELECT
    emp_name,
    salary,
    RANK() OVER (
        ORDER BY salary DESC
    ) AS emp_rank
FROM employees;

--------------------------------------------------------

-- 8
SELECT
    emp_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS emp_rank
FROM employees;

--------------------------------------------------------

-- 9
SELECT
    emp_name,
    join_date,
    RANK() OVER (
        ORDER BY join_date DESC
    ) AS emp_rank
FROM employees;

--------------------------------------------------------

-- 10
SELECT
    emp_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary ASC
    ) AS emp_rank
FROM employees;

--------------------------------------------------------

-- 11
SELECT
    emp_name,
    RANK() OVER (
        ORDER BY emp_name ASC
    ) AS emp_rank
FROM employees;
