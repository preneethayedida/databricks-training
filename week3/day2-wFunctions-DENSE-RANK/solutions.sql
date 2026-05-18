-- =====================================================
-- WEEK 3 - DAY 2 SOLUTIONS
-- =====================================================

--------------------------------------------------------
-- 1
--------------------------------------------------------

SELECT
    emp_name,
    salary,
    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS dense_rank_no
FROM employees;

--------------------------------------------------------
-- 2
--------------------------------------------------------

SELECT
    emp_name,
    department,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dense_rank_no
FROM employees;

--------------------------------------------------------
-- 3
--------------------------------------------------------

SELECT
    emp_name,
    join_date,
    DENSE_RANK() OVER (
        ORDER BY join_date ASC
    ) AS dense_rank_no
FROM employees;

--------------------------------------------------------
-- 4
--------------------------------------------------------

SELECT
    emp_name,
    salary,
    DENSE_RANK() OVER (
        ORDER BY salary ASC
    ) AS dense_rank_no
FROM employees;

--------------------------------------------------------
-- 5
--------------------------------------------------------

SELECT
    emp_name,
    department,
    join_date,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY join_date ASC
    ) AS dense_rank_no
FROM employees;

--------------------------------------------------------
-- 6
--------------------------------------------------------

SELECT
    emp_name,
    DENSE_RANK() OVER (
        ORDER BY emp_name ASC
    ) AS dense_rank_no
FROM employees;

--------------------------------------------------------
-- 7
--------------------------------------------------------

SELECT
    emp_name,
    department,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY emp_name ASC
    ) AS dense_rank_no
FROM employees;

--------------------------------------------------------
-- 8
--------------------------------------------------------

SELECT
    emp_name,
    join_date,
    DENSE_RANK() OVER (
        ORDER BY join_date DESC
    ) AS dense_rank_no
FROM employees;
