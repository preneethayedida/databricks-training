-- 1
SELECT * FROM Employees
WHERE salary IS NULL;

-- 2
SELECT * FROM Orders
WHERE discount IS NOT NULL;

-- 3
SELECT * FROM Products
WHERE category IS NULL;

-- 4
SELECT COUNT(*) AS null_manager_count FROM Employees
WHERE manager_id IS NULL;

-- 5
SELECT emp_id, name, COALESCE(salary, 0) AS salary FROM Employees;

-- 6
SELECT emp_id, name, COALESCE(bonus, 1000) AS bonus FROM Employees;

-- 7
SELECT order_id, customer_name, COALESCE(amount, 500) AS amount FROM Orders;

-- 8
SELECT product_id, product_name, COALESCE(stock, 0) AS stock FROM Products;

-- 9
SELECT emp_id, name, COALESCE(salary, bonus) AS earnings
FROM Employees;

-- 10
SELECT emp_id, name, COALESCE(salary, bonus, 0) AS first_available_income
FROM Employees;

-- 11
SELECT product_id, product_name, COALESCE(price, 1000) AS final_price
FROM Products;

-- 12
SELECT order_id, customer_name, COALESCE(amount, discount, 0) AS payment
FROM Orders;

-- 13
SELECT emp_id, NULLIF(salary, 0) AS updated_salary
FROM Employees;

-- 14
SELECT order_id, NULLIF(discount, 0) AS updated_discount
FROM Orders;

-- 15
SELECT order_id, amount / NULLIF(discount, 0) AS division_result
FROM Orders;

-- 16
SELECT order_id, NULLIF(coupon_code, 'DISC10') AS updated_coupon
FROM Orders;

-- 17
SELECT emp_id, name, COALESCE(salary, 0) + COALESCE(bonus, 0) AS total_earnings
FROM Employees;

-- 18
SELECT * FROM Employees
WHERE salary IS NULL AND bonus IS NULL;

-- 19
SELECT * FROM Products
WHERE price IS NULL
AND category IS NOT NULL;

-- 20
SELECT * FROM Orders
WHERE amount IS NULL
AND discount IS NULL;

-- 21
SELECT emp_id, name, COALESCE(salary, bonus, 1000) AS income
FROM Employees;

-- 22
SELECT order_id, NULLIF(discount, 0) AS cleaned_discount
FROM Orders;

-- 23
SELECT order_id, customer_name, COALESCE(amount, 0) - COALESCE(discount, 0) AS payable_amount
FROM Orders;

-- 24
SELECT * FROM Employees
WHERE salary IS NULL
AND manager_id IS NOT NULL;
