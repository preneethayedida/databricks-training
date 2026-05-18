-- 1
SELECT ABS(-100) AS absolute_value;

-- 2
SELECT emp_name,
       ROUND(base_salary, 0) AS rounded_salary
FROM employee_salary;

-- 3
SELECT emp_name,
       ROUND(base_salary, 2) AS rounded_salary
FROM employee_salary;

-- 4
SELECT emp_name,
       CEIL(base_salary) AS ceil_salary
FROM employee_salary;

-- 5
SELECT emp_name,
       FLOOR(base_salary) AS floor_salary
FROM employee_salary;

-- 6
SELECT emp_name,
       TRUNCATE(base_salary, 1) AS truncated_salary
FROM employee_salary;

-- 7
SELECT emp_name,
       MOD(experience_years, 2) AS remainder
FROM employee_salary;

-- 8
SELECT POWER(2, 3) AS power_result;

-- 9
SELECT SQRT(64) AS square_root;

-- 10
SELECT emp_name,
       SIGN(base_salary) AS sign_value
FROM employee_salary;

-- 11
SELECT RAND() AS random_number;

-- 12
SELECT emp_name,
       FORMAT(base_salary, 2) AS formatted_salary
FROM employee_salary;

-- 13
SELECT emp_name,
       GREATEST(base_salary, IFNULL(bonus, 0)) AS greatest_value
FROM employee_salary;

-- 14
SELECT emp_name,
       LEAST(base_salary, IFNULL(bonus, 0)) AS least_value
FROM employee_salary;

-- 15
SELECT emp_name,
       base_salary - ((base_salary * tax_percent) / 100) AS salary_after_tax
FROM employee_salary;

-- 16
SELECT emp_name,
       base_salary + IFNULL(bonus, 0) AS total_earnings
FROM employee_salary;

-- 17
SELECT *
FROM employee_salary
WHERE experience_years > 5;

-- 18
SELECT emp_name,
       base_salary * 12 AS yearly_salary
FROM employee_salary;

-- 19
SELECT emp_name,
       ROUND(base_salary / 12, 0) AS monthly_salary
FROM employee_salary;

-- 20
SELECT MAX(base_salary) AS highest_salary
FROM employee_salary;
