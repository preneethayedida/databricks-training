-- =====================================================
-- WEEK 1 - DAY 3 SQL SOLUTIONS
-- =====================================================

--------------------------------------------------------
-- SELECT
--------------------------------------------------------

-- 1
SELECT * FROM Employees;

-- 2
SELECT emp_name, salary FROM Employees;

-- 3
SELECT emp_name, department FROM Employees;

-- 4
SELECT * FROM Employees WHERE department = 'IT';

-- 5
SELECT emp_name, experience FROM Employees;

--------------------------------------------------------
-- WHERE
--------------------------------------------------------

-- 6
SELECT * FROM Employees WHERE salary > 70000;

-- 7
SELECT * FROM Employees WHERE city = 'Hyderabad';

-- 8
SELECT * FROM Employees WHERE experience < 4;

-- 9
SELECT * FROM Employees WHERE department = 'Finance';

-- 10
SELECT * FROM Employees WHERE salary = 52000;

--------------------------------------------------------
-- GROUP BY
--------------------------------------------------------

-- 11
SELECT department, SUM(salary) AS total_salary
FROM Employees GROUP BY department;

-- 12
SELECT department, AVG(salary) AS average_salary
FROM Employees GROUP BY department;

-- 13
SELECT city, COUNT(*) AS employee_count
FROM Employees GROUP BY city;

-- 14
SELECT department, MAX(salary) AS maximum_salary
FROM Employees GROUP BY department;

-- 15
SELECT department, MIN(experience) AS minimum_experience
FROM Employees GROUP BY department;

--------------------------------------------------------
-- HAVING
--------------------------------------------------------

-- 16
SELECT department, COUNT(*) AS employee_count FROM Employees
GROUP BY department HAVING COUNT(*) > 3;

-- 17
SELECT department, AVG(salary) AS average_salary FROM Employees
GROUP BY department HAVING AVG(salary) > 60000;

-- 18
SELECT city, COUNT(*) AS employee_count FROM Employees
GROUP BY city HAVING COUNT(*) > 2;

-- 19
SELECT department, SUM(salary) AS total_salary FROM Employees
GROUP BY department HAVING SUM(salary) > 200000;

-- 20
SELECT department, MAX(salary) AS maximum_salary FROM Employees
GROUP BY department HAVING MAX(salary) > 90000;

--------------------------------------------------------
-- TOP
--------------------------------------------------------

-- 21
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 5;

-- 22
SELECT * FROM Employees
ORDER BY experience DESC
LIMIT 3;

-- 23
SELECT * FROM Employees WHERE department = 'Finance'
ORDER BY salary DESC
LIMIT 2;

-- 24
SELECT * FROM Employees WHERE city = 'Hyderabad'
LIMIT 4;

-- 25
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 1;

--------------------------------------------------------
-- DISTINCT
--------------------------------------------------------

-- 26
SELECT DISTINCT department FROM Employees;

-- 27
SELECT DISTINCT city FROM Employees;

-- 28
SELECT DISTINCT salary FROM Employees;

-- 29
SELECT DISTINCT department, city FROM Employees;

-- 30
SELECT DISTINCT experience FROM Employees;
