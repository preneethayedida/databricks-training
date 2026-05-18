# WEEK 1 - DAY 5 SQL SOLUTIONS

```sql
-- =====================================================
-- WEEK 1 - DAY 5 SQL SOLUTIONS
-- =====================================================

--------------------------------------------------------
-- LEVEL 0
--------------------------------------------------------

-- QUESTION 1: Employee Compensation Classification

SELECT
    INITCAP(emp_name) AS proper_name,
    base_salary + COALESCE(bonus,0) AS total_income,
    ROUND(base_salary + COALESCE(bonus,0)) AS rounded_income,
    YEAR(joining_date) AS joining_year,
    CASE
        WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) > 7 THEN 'Senior'
        WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) BETWEEN 4 AND 7 THEN 'Mid'
        ELSE 'Junior'
    END AS employee_level
FROM employee_payments;

-- QUESTION 2: Order Delivery Delay Analysis

SELECT
    UPPER(customer_name) AS customer_name,
    DATEDIFF(COALESCE(delivery_date, CURDATE()), order_date) AS delivery_days,
    TRUNCATE(order_amount,1) AS truncated_amount,
    CASE
        WHEN delivery_date IS NULL THEN 'Pending'
        WHEN DATEDIFF(delivery_date, order_date) = 0 THEN 'Same-day'
        WHEN DATEDIFF(delivery_date, order_date) > 3 THEN 'Delayed'
        ELSE 'Normal'
    END AS delivery_status
FROM orders_delivery;

-- QUESTION 3: Customer Spending Pattern

SELECT
    INITCAP(cust_name) AS customer_name,
    MONTHNAME(purchase_date) AS purchase_month,
    ROUND(purchase_amount) AS rounded_amount,
    ABS(purchase_amount) AS absolute_amount,
    CASE
        WHEN purchase_amount > 15000 THEN 'High spender'
        WHEN purchase_amount BETWEEN 8000 AND 15000 THEN 'Medium'
        ELSE 'Low'
    END AS spending_category
FROM customer_spending;

-- QUESTION 4: Subscription Validity Check

SELECT
    SUBSTRING_INDEX(user_email,'@',-1) AS email_domain,
    TIMESTAMPDIFF(MONTH,start_date,end_date) AS subscription_months,
    FORMAT(subscription_fee,2) AS formatted_fee,
    DATEDIFF(end_date,CURDATE()) AS remaining_days,
    CASE
        WHEN end_date < CURDATE() THEN 'Expired'
        WHEN DATEDIFF(end_date,CURDATE()) <= 30 THEN 'Expiring Soon'
        ELSE 'Active'
    END AS subscription_status
FROM subscriptions;

-- QUESTION 5: Loan EMI Risk Categorization

SELECT
    UPPER(customer_name) AS customer_name,
    ROUND((loan_amount * POWER((1 + interest_rate/100),1))/12) AS emi,
    TIMESTAMPDIFF(YEAR,loan_start,CURDATE()) AS years_since_loan,
    CASE
        WHEN interest_rate > 9 THEN 'High Risk'
        WHEN interest_rate BETWEEN 8 AND 9 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_category
FROM loan_details;

-- QUESTION 6: Employee Attendance Evaluation

SELECT
    LOWER(emp_name) AS employee_name,
    ROUND((present_days/total_days)*100) AS attendance_percentage,
    MONTHNAME(record_date) AS month_name,
    total_days - present_days AS absent_days,
    CASE
        WHEN (present_days/total_days)*100 >= 90 THEN 'Excellent'
        WHEN (present_days/total_days)*100 BETWEEN 75 AND 89 THEN 'Average'
        ELSE 'Poor'
    END AS attendance_status
FROM attendance;

-- QUESTION 7: Product Discount Validation

SELECT
    INITCAP(product_name) AS product_name,
    ABS(mrp-selling_price) AS discount_amount,
    ROUND(((mrp-selling_price)/mrp)*100,2) AS discount_percentage,
    DAYNAME(sale_date) AS sale_day,
    CASE
        WHEN selling_price < mrp THEN 'Valid Discount'
        WHEN selling_price > mrp THEN 'Overpriced'
        ELSE 'No Discount'
    END AS discount_status
FROM product_sales;

-- QUESTION 8: Insurance Policy Aging

SELECT
    UPPER(holder_name) AS holder_name,
    TIMESTAMPDIFF(YEAR,policy_start,policy_end) AS policy_duration,
    DATEDIFF(policy_end,CURDATE()) AS remaining_days,
    ROUND(premium_amount) AS rounded_premium,
    CASE
        WHEN policy_end < CURDATE() THEN 'Expired'
        WHEN TIMESTAMPDIFF(YEAR,policy_start,policy_end) >= 3 THEN 'Long Term'
        ELSE 'Mid Term'
    END AS policy_status
FROM insurance_policies;

-- QUESTION 9: Salary Increment Simulation

SELECT
    LOWER(emp_name) AS employee_name,
    TIMESTAMPDIFF(YEAR,last_hike,CURDATE()) AS years_since_hike,
    ROUND(
        CASE
            WHEN rating = 5 THEN current_salary * 1.20
            WHEN rating = 4 THEN current_salary * 1.10
            WHEN rating = 3 THEN current_salary * 1.05
            ELSE current_salary
        END
    ) AS new_salary,
    CASE
        WHEN rating = 5 THEN 'High Increment'
        WHEN rating = 4 THEN 'Moderate'
        ELSE 'No Increment'
    END AS increment_status
FROM salary_revision;

-- QUESTION 10: Customer Account Status Evaluation

SELECT
    customer_name,
    ABS(balance) AS absolute_balance,
    DATEDIFF(CURDATE(),last_transaction) AS inactive_days,
    INITCAP(branch) AS branch_name,
    SIGN(balance) AS balance_sign,
    CASE
        WHEN balance < 0 THEN 'Overdrawn'
        WHEN DATEDIFF(CURDATE(),last_transaction) > 365 THEN 'Dormant'
        ELSE 'Active'
    END AS account_status
FROM bank_accounts;

--------------------------------------------------------
-- LEVEL 1
--------------------------------------------------------

-- QUESTION 11
SELECT
    LOWER(emp_name) AS employee_name,
    ROUND(salary - (salary * tax_percent/100)) AS net_salary,
    YEAR(last_revision) AS revision_year,
    TIMESTAMPDIFF(MONTH,last_revision,CURDATE()) AS months_since_revision,
    CASE
        WHEN tax_percent > 20 AND TIMESTAMPDIFF(MONTH,last_revision,CURDATE()) > 24 THEN 'Flag Tax Shock'
        WHEN tax_percent BETWEEN 15 AND 20 THEN 'Flag Review Needed'
        ELSE 'Stable'
    END AS audit_status
FROM salary_audit;

-- QUESTION 12
SELECT
    INITCAP(emp_name) AS employee_name,
    ROUND((bonus/base_salary)*100,2) AS bonus_percentage,
    DAYNAME(bonus_date) AS bonus_day,
    ABS(base_salary - bonus) AS salary_bonus_difference,
    CASE
        WHEN (bonus/base_salary)*100 > 30 AND DAYNAME(bonus_date) IN ('Saturday','Sunday') THEN 'Suspicious'
        WHEN (bonus/base_salary)*100 <= 20 THEN 'Normal'
        ELSE 'Audit'
    END AS audit_status
FROM bonus_monitor;

-- QUESTION 13
SELECT
    UPPER(emp_name) AS employee_name,
    TIMESTAMPDIFF(YEAR,joining_date,CURDATE()) AS actual_experience,
    declared_experience - TIMESTAMPDIFF(YEAR,joining_date,CURDATE()) AS experience_difference,
    FLOOR(salary) AS floored_salary,
    CASE
        WHEN declared_experience > TIMESTAMPDIFF(YEAR,joining_date,CURDATE()) THEN 'Overstated'
        WHEN declared_experience < TIMESTAMPDIFF(YEAR,joining_date,CURDATE()) THEN 'Understated'
        ELSE 'Matched'
    END AS validation_status
FROM employee_experience;

-- QUESTION 14
SELECT
    RIGHT(emp_name,2) AS last_two_chars,
    DAY(credit_date) AS credit_day,
    TRUNCATE(salary,0) AS truncated_salary,
    MOD(TRUNCATE(salary,0),10) AS salary_mod,
    CASE
        WHEN MOD(TRUNCATE(salary,0),10) = DAY(credit_date) THEN 'Pattern Match'
        ELSE 'No Match'
    END AS pattern_status
FROM salary_digits;

-- QUESTION 15
SELECT
    LOWER(emp_name) AS employee_name,
    DAYNAME(payment_date) AS weekday_name,
    ROUND(salary) AS rounded_salary,
    MOD(ROUND(salary),2) AS salary_mod,
    CASE
        WHEN MOD(ROUND(salary),2)=0 AND DAY(payment_date)%2=1 THEN 'Violation'
        ELSE 'Compliant'
    END AS compliance_status
FROM payroll_control;


-- QUESTION 16
SELECT
    INITCAP(emp_name) AS employee_name,
    TIMESTAMPDIFF(YEAR,last_hike,CURDATE()) AS years_since_hike,
    POWER(TIMESTAMPDIFF(YEAR,last_hike,CURDATE()),2) AS inflation_power,
    ROUND(salary * POWER(1.05,TIMESTAMPDIFF(YEAR,last_hike,CURDATE()))) AS salary_impact,
    CASE
        WHEN TIMESTAMPDIFF(YEAR,last_hike,CURDATE()) > 5 THEN 'High Inflation Risk'
        WHEN TIMESTAMPDIFF(YEAR,last_hike,CURDATE()) BETWEEN 3 AND 5 THEN 'Moderate'
        ELSE 'Low'
    END AS inflation_status
FROM inflation_watch;

-- QUESTION 17
SELECT
    UPPER(emp_name) AS employee_name,
    YEAR(record_date) AS record_year,
    SIGN(salary) AS salary_sign,
    ABS(salary) AS absolute_salary,
    CASE
        WHEN salary < 0 THEN 'Negative Error'
        WHEN salary = 0 THEN 'Zero Salary'
        ELSE 'Valid'
    END AS integrity_status
FROM salary_integrity;

-- QUESTION 18
SELECT
    LENGTH(emp_name) AS name_length,
    TIMESTAMPDIFF(YEAR,join_date,CURDATE()) AS years_of_service,
    ROUND(salary) AS rounded_salary,
    CASE
        WHEN LENGTH(emp_name) > TIMESTAMPDIFF(YEAR,join_date,CURDATE()) THEN 'Name Bias'
        ELSE 'Neutral'
    END AS comparison_status
FROM name_salary;

-- QUESTION 19
SELECT
    MONTHNAME(paid_date) AS month_name,
    CEIL(salary) AS ceiled_salary,
    LAST_DAY(paid_date) AS last_day_of_month,
    CASE
        WHEN paid_date = LAST_DAY(paid_date) THEN 'End Month Spike'
        ELSE 'Regular'
    END AS salary_status
FROM salary_monthly;

-- QUESTION 20
SELECT
    LEFT(emp_name,1) AS first_character,
    TRUNCATE(salary,0) AS truncated_salary,
    DAY(audit_date) AS audit_day,
    CASE
        WHEN MOD(TRUNCATE(salary,0),9) > 5 THEN 'Digit Alert'
        ELSE 'Normal'
    END AS audit_status
FROM digit_audit;

-- QUESTION 21
SELECT
    LEFT(bank_code,4) AS bank_prefix,
    DAYNAME(credit_date) AS weekday_name,
    ROUND(salary) AS rounded_salary,
    MOD(ROUND(salary),5) AS salary_mod,
    CASE
        WHEN DAYNAME(credit_date) IN ('Saturday','Sunday') AND MOD(ROUND(salary),5)=0 THEN 'Weekend Fraud'
        WHEN LEFT(bank_code,4)='HDFC' THEN 'Bank Review'
        ELSE 'Normal'
    END AS fraud_status
FROM salary_credit_audit;

-- QUESTION 22
SELECT
    HOUR(credit_ts) AS credit_hour,
    LOWER(emp_name) AS employee_name,
    FLOOR(salary) AS floored_salary,
    FLOOR(salary)-HOUR(credit_ts) AS salary_hour_difference,
    CASE
        WHEN HOUR(credit_ts) BETWEEN 0 AND 3 THEN 'Midnight Drift'
        WHEN HOUR(credit_ts) > 18 THEN 'After Hours'
        ELSE 'Business Hours'
    END AS drift_status
FROM salary_time_drift;

-- QUESTION 23
SELECT
    TRUNCATE(salary,2) AS truncated_salary,
    ROUND(salary,2)-TRUNCATE(salary,2) AS precision_difference,
    DAYNAME(record_date) AS day_name,
    LENGTH(emp_name) AS name_length,
    CASE
        WHEN ROUND(salary,2)-TRUNCATE(salary,2) > 0.01 THEN 'Precision Loss'
        ELSE 'Safe'
    END AS precision_status
FROM salary_precision;

-- QUESTION 24
SELECT
    TIMESTAMPDIFF(YEAR,last_hike,CURDATE()) AS years_since_hike,
    POWER(growth_rate,TIMESTAMPDIFF(YEAR,last_hike,CURDATE())) AS growth_power,
    ROUND(base_salary * POWER(growth_rate,TIMESTAMPDIFF(YEAR,last_hike,CURDATE()))) AS projected_salary,
    UPPER(emp_name) AS employee_name,
    CASE
        WHEN ROUND(base_salary * POWER(growth_rate,TIMESTAMPDIFF(YEAR,last_hike,CURDATE()))) > 150000 THEN 'Explosive Growth'
        WHEN ROUND(base_salary * POWER(growth_rate,TIMESTAMPDIFF(YEAR,last_hike,CURDATE()))) BETWEEN 100000 AND 150000 THEN 'Controlled'
        ELSE 'Stagnant'
    END AS growth_status
FROM salary_growth;

-- QUESTION 25
SELECT
    REPLACE(salary,'.','') AS salary_without_decimal,
    REVERSE(REPLACE(TRUNCATE(salary,0),'.','')) AS reversed_salary,
    DAYNAME(processed_date) AS weekday_name,
    INITCAP(emp_name) AS employee_name,
    CASE
        WHEN REVERSE(TRUNCATE(salary,0)) = TRUNCATE(salary,0) THEN 'Symmetric Pay'
        ELSE 'Asymmetric'
    END AS symmetry_status
FROM salary_symmetry;

-- QUESTION 26
SELECT
    YEAR(credit_date) AS credit_year,
    CEIL(salary) AS ceiled_salary,
    DAYOFYEAR(credit_date) AS day_of_year,
    CASE
        WHEN (YEAR(credit_date)%4=0 AND YEAR(credit_date)%100!=0) OR YEAR(credit_date)%400=0 THEN 'Leap Credit'
        ELSE 'Non-Leap Credit'
    END AS leap_status
FROM leap_salary;

-- QUESTION 27
SELECT
    CASE
        WHEN MONTH(credit_date) >= 4 THEN CONCAT(YEAR(credit_date),'-',YEAR(credit_date)+1)
        ELSE CONCAT(YEAR(credit_date)-1,'-',YEAR(credit_date))
    END AS fiscal_year,
    MONTHNAME(credit_date) AS month_name,
    FORMAT(salary,2) AS formatted_salary,
    LOWER(emp_name) AS employee_name,
    CASE
        WHEN MONTH(credit_date)=3 THEN 'Year End Credit'
        WHEN MONTH(credit_date)=4 THEN 'Year Start Credit'
        ELSE 'Mid Year'
    END AS fiscal_status
FROM fiscal_salary;

-- QUESTION 28
SELECT
    RAND() AS random_value,
    ROUND(salary) AS rounded_salary,
    DAYNAME(record_date) AS day_name,
    LEFT(emp_name,1) AS first_character,
    CASE
        WHEN RAND() > 0.7 THEN 'Sampled'
        ELSE 'Skipped'
    END AS sampling_status
FROM salary_sampling;

-- QUESTION 29
SELECT
    ASCII(LEFT(emp_name,1)) AS ascii_value,
    TIMESTAMPDIFF(YEAR,join_date,CURDATE()) AS years_since_joining,
    FLOOR(salary) AS floored_salary,
    CASE
        WHEN ASCII(LEFT(emp_name,1)) > TIMESTAMPDIFF(YEAR,join_date,CURDATE()) THEN 'Name Dominates'
        ELSE 'Experience Dominates'
    END AS comparison_status
FROM salary_ascii;

-- QUESTION 30
SELECT
    DAY(credit_date) AS credit_day,
    MONTH(credit_date) AS credit_month,
    RIGHT(TRUNCATE(salary,0),2) AS salary_last_digits,
    UPPER(emp_name) AS employee_name,
    ABS(DAY(credit_date)-MONTH(credit_date)) AS date_difference,
    CASE
        WHEN DAY(credit_date)=MONTH(credit_date) THEN 'Calendar Match'
        ELSE 'Calendar Drift'
    END AS calendar_status
FROM salary_calendar;

--------------------------------------------------------
-- LEVEL 2
--------------------------------------------------------

-- QUESTION 31
SELECT
    INITCAP(emp_name) AS employee_name,
    CASE
        WHEN DAYNAME(login_time) IN ('Saturday','Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END AS login_type,
    ROUND(TIMESTAMPDIFF(MINUTE,login_time,logout_time)/60,2) AS working_hours,
    CASE
        WHEN DAYNAME(login_time) NOT IN ('Saturday','Sunday') AND TIMESTAMPDIFF(MINUTE,login_time,logout_time)/60 >= 8 THEN 'Good Performer'
        WHEN DAYNAME(login_time) NOT IN ('Saturday','Sunday') AND TIMESTAMPDIFF(MINUTE,login_time,logout_time)/60 < 6 THEN 'Bad Performer'
        ELSE 'Weekend Login'
    END AS performance_status
FROM employee_login;

-- QUESTION 32
SELECT
    UPPER(emp_name) AS employee_name,
    CASE
        WHEN login_date >= DATE_SUB(CURDATE(),INTERVAL 7 DAY) THEN 'Within 7 Days'
        ELSE 'Older Record'
    END AS attendance_period,
    DAYNAME(login_date) AS weekday_name,
    TIMEDIFF(logout_time,login_time) AS working_hours,
    CASE
        WHEN login_date >= DATE_SUB(CURDATE(),INTERVAL 7 DAY) AND TIMESTAMPDIFF(HOUR,login_time,logout_time) >= 8 THEN 'Active & Productive'
        WHEN login_date >= DATE_SUB(CURDATE(),INTERVAL 7 DAY) AND TIMESTAMPDIFF(HOUR,login_time,logout_time) < 8 THEN 'Active but Low Hours'
        ELSE 'Absent from Last 7 Days'
    END AS productivity_status
FROM attendance_log;

-- QUESTION 33
SELECT
    DAYNAME(work_date) AS work_day,
    LOWER(emp_name) AS employee_name,
    TIMESTAMPDIFF(HOUR,login_time,logout_time) AS working_hours,
    CEIL(TIMESTAMPDIFF(HOUR,login_time,logout_time)) AS rounded_hours,
    CASE
        WHEN DAYNAME(work_date) IN ('Saturday','Sunday') AND TIMESTAMPDIFF(HOUR,login_time,logout_time) >= 8 THEN 'Weekend Overtime'
        WHEN DAYNAME(work_date) IN ('Saturday','Sunday') AND TIMESTAMPDIFF(HOUR,login_time,logout_time) < 4 THEN 'Suspicious Login'
        ELSE 'Normal Working Day'
    END AS weekend_status
FROM weekend_monitor;

-- QUESTION 34
SELECT
    HOUR(login_datetime) AS login_hour,
    TIMESTAMPDIFF(HOUR,login_datetime,logout_datetime) AS total_working_hours,
    TRUNCATE(TIMESTAMPDIFF(MINUTE,login_datetime,logout_datetime)/60,1) AS truncated_hours,
    DAYNAME(login_datetime) AS weekday_name,
    CASE
        WHEN HOUR(login_datetime) < 9 AND TIMESTAMPDIFF(HOUR,login_datetime,logout_datetime) >= 8 THEN 'Disciplined'
        WHEN HOUR(login_datetime) > 10 THEN 'Late Comer'
        ELSE 'Poor Discipline'
    END AS discipline_status
FROM login_discipline;

-- QUESTION 35
SELECT
    CASE
        WHEN work_date >= DATE_SUB(CURDATE(),INTERVAL 7 DAY) THEN 'Recent Record'
        ELSE 'Old Record'
    END AS attendance_period,
    DAYNAME(work_date) AS weekday_name,
    TIMESTAMPDIFF(HOUR,login_time,logout_time) AS total_hours,
    FLOOR(TIMESTAMPDIFF(HOUR,login_time,logout_time)) AS floored_hours,
    CASE
        WHEN work_date >= DATE_SUB(CURDATE(),INTERVAL 7 DAY)
             AND DAYNAME(work_date) NOT IN ('Saturday','Sunday')
             AND TIMESTAMPDIFF(HOUR,login_time,logout_time) >= 8 THEN 'Consistent Performer'
        WHEN TIMESTAMPDIFF(HOUR,login_time,logout_time) < 6 THEN 'Irregular Performer'
        ELSE 'Absent / Old Record'
    END AS performance_status
FROM performance_tracker;
```
