-- SQL Solutions
-- =====================================================
-- WEEK 1 - DAY 1 SQL SOLUTIONS
-- =====================================================

-- Solution 1
SELECT * FROM employee;

-- Solution 2
SELECT name, salary
FROM employee;

-- Solution 3
SELECT *
FROM employee
WHERE salary > 50000;

-- Solution 4
SELECT *
FROM employee
WHERE department_id = 2;

-- Solution 5
SELECT *
FROM employee
WHERE age > 30;

-- Solution 6
SELECT *
FROM employee
ORDER BY salary DESC;

-- Solution 7
SELECT COUNT(*) AS total_employees
FROM employee;

-- Solution 8
SELECT AVG(salary) AS average_salary
FROM employee;

-- Solution 9
SELECT MAX(salary) AS maximum_salary
FROM employee;

-- Solution 10
SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id;
