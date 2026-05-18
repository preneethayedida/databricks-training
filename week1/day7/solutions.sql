-- =====================================================
-- WEEK 1 - DAY 7 SQL SOLUTIONS
-- =====================================================

--------------------------------------------------------
-- 1. Retrieve employee names and their managers.
--------------------------------------------------------

SELECT 
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

--------------------------------------------------------
-- 2. Display all employees and their departments.
--------------------------------------------------------

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------------
-- 3. List employees who report to a manager.
--------------------------------------------------------

SELECT 
    e.emp_name,
    m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;

--------------------------------------------------------
-- 4. Find total salary paid to each employee and department.
--------------------------------------------------------

-- Salary table not provided in dataset
-- Placeholder query

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------------
-- 5. Display employees without departments.
--------------------------------------------------------

SELECT *
FROM employees
WHERE dept_id IS NULL;

--------------------------------------------------------
-- 6. Fetch employees and assigned projects.
--------------------------------------------------------

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

--------------------------------------------------------
-- 7. List employees who completed at least one project.
--------------------------------------------------------

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;

--------------------------------------------------------
-- 8. Show employees and projects including unassigned projects.
--------------------------------------------------------

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
RIGHT JOIN projects p
ON e.emp_id = p.emp_id;

--------------------------------------------------------
-- 9. Find employees and corresponding salaries.
--------------------------------------------------------

-- Salary table not available
-- Placeholder query

SELECT 
    emp_name
FROM employees;

--------------------------------------------------------
-- 10. Retrieve employees and department names.
--------------------------------------------------------

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------------
-- 11. Find all departments and employees.
--------------------------------------------------------

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------------
-- 12. List employees with contact information.
--------------------------------------------------------

-- Contact table not available
-- Placeholder query

SELECT 
    emp_name
FROM employees;

--------------------------------------------------------
-- 13. Show employees and departments including NULL matches.
--------------------------------------------------------

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------------
-- 14. Find employees without projects.
--------------------------------------------------------

SELECT 
    e.emp_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
WHERE p.project_id IS NULL;

--------------------------------------------------------
-- 15. Retrieve employees and project names.
--------------------------------------------------------

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

--------------------------------------------------------
-- 16. List projects and assigned employees.
--------------------------------------------------------

SELECT 
    p.project_name,
    e.emp_name
FROM projects p
LEFT JOIN employees e
ON p.emp_id = e.emp_id;

--------------------------------------------------------
-- 17. Employees with managers and projects.
--------------------------------------------------------

SELECT 
    e.emp_name,
    m.emp_name AS manager_name,
    p.project_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id
INNER JOIN projects p
ON e.emp_id = p.emp_id;

--------------------------------------------------------
-- 18. Employees with departments only.
--------------------------------------------------------

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------------
-- 19. Employees belonging to multiple departments.
--------------------------------------------------------

-- Multiple departments dataset not available
-- Placeholder query

SELECT 
    emp_name,
    dept_id
FROM employees;

--------------------------------------------------------
-- 20. Departments and employees including empty departments.
--------------------------------------------------------

SELECT 
    d.dept_name,
    e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

--------------------------------------------------------
-- 21. Employees with projects but no departments.
--------------------------------------------------------

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id
WHERE e.dept_id IS NULL;

--------------------------------------------------------
-- 22. Count employees department-wise.
--------------------------------------------------------

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

--------------------------------------------------------
-- 23. Employees reporting to managers only.
--------------------------------------------------------

SELECT 
    e.emp_name,
    m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;

--------------------------------------------------------
-- 24. Employees and managers including NULL managers.
--------------------------------------------------------

SELECT 
    e.emp_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

--------------------------------------------------------
-- 25. Count employees in each department.
--------------------------------------------------------

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

--------------------------------------------------------
-- 26. Employees and departments including empty departments.
--------------------------------------------------------

SELECT 
    e.emp_name,
    d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

--------------------------------------------------------
-- 27. Employees without salary records.
--------------------------------------------------------

-- Salary table not available
-- Placeholder query

SELECT 
    emp_name
FROM employees;

--------------------------------------------------------
-- 28. Employees and project assignments.
--------------------------------------------------------

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

--------------------------------------------------------
-- 29. Employees with department and project assignments.
--------------------------------------------------------

SELECT 
    e.emp_name,
    d.dept_name,
    p.project_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

--------------------------------------------------------
-- 30. Employees with or without departments.
--------------------------------------------------------

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;
