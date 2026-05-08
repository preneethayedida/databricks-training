-- =====================================================
-- WEEK 1 - DAY 4 SQL SOLUTIONS
-- =====================================================

--------------------------------------------------------
-- COMPARISON OPERATORS
--------------------------------------------------------

-- 1
SELECT * FROM Employees WHERE salary >= 80000;

-- 2
SELECT * FROM Employees WHERE experience <= 3;

-- 3
SELECT * FROM Employees WHERE salary <> 45000;

-- 4
SELECT * FROM Employees WHERE salary < 50000;

-- 5
SELECT * FROM Employees WHERE experience > 5;

--------------------------------------------------------
-- LOGICAL OPERATORS
--------------------------------------------------------

-- 6
SELECT * FROM Employees
WHERE department = 'IT' AND salary > 70000;

-- 7
SELECT * FROM Employees
WHERE city = 'Hyderabad' OR city = 'Bangalore';

-- 8
SELECT * FROM Employees
WHERE department = 'HR' AND experience < 3;

-- 9
SELECT * FROM Employees
WHERE salary > 60000 OR experience > 6;

-- 10
SELECT * FROM Employees WHERE department != 'Sales';

--------------------------------------------------------
-- IN AND NOT IN
--------------------------------------------------------

-- 11
SELECT * FROM Employees WHERE city IN ('Hyderabad', 'Mumbai');

-- 12
SELECT * FROM Employees WHERE department IN ('IT', 'Finance');

-- 13
SELECT * FROM Employees WHERE city NOT IN ('Chennai', 'Pune');

-- 14
SELECT * FROM Employees WHERE salary IN (45000, 75000, 91000);

-- 15
SELECT * FROM Employees WHERE department NOT IN ('HR', 'Sales');

--------------------------------------------------------
-- BETWEEN
--------------------------------------------------------

-- 16
SELECT * FROM Employees WHERE salary BETWEEN 50000 AND 80000;

-- 17
SELECT * FROM Employees WHERE experience BETWEEN 3 AND 6;

-- 18
SELECT * FROM Employees WHERE emp_id BETWEEN 105 AND 112;

-- 19
SELECT * FROM Employees WHERE salary NOT BETWEEN 40000 AND 60000;

-- 20
SELECT * FROM Employees WHERE experience BETWEEN 2 AND 4;

--------------------------------------------------------
-- LIKE OPERATOR
--------------------------------------------------------

-- 21
SELECT * FROM Employees WHERE emp_name LIKE 'R%';

-- 22
SELECT * FROM Employees WHERE emp_name LIKE '%a';

-- 23
SELECT * FROM Employees WHERE emp_name LIKE '%v%';

-- 24
SELECT * FROM Employees WHERE city LIKE 'B%';

-- 25
SELECT * FROM Employees WHERE department LIKE '%s';
