-- =====================================================
-- WEEK 1 - DAY 5 SQL PRACTICE QUERIES
-- =====================================================

--------------------------------------------------------
-- LEVEL 0
--------------------------------------------------------

-- QUESTION 1: Employee Compensation Classification

-- For each employee:
-- • Convert emp_name to proper case
-- • Calculate total income = base_salary + bonus (NULL safe)
-- • Round total income to nearest integer
-- • Extract joining year
-- • Use CASE to classify:
--      Senior if experience > 7 years
--      Mid if between 4 and 7
--      Junior otherwise

--------------------------------------------------------

-- QUESTION 2: Order Delivery Delay Analysis

-- For each order:
-- • Uppercase customer name
-- • Calculate delivery days using date difference
-- • Replace NULL delivery date with today
-- • Truncate order amount to 1 decimal
-- • Use CASE:
--      Same-day
--      Delayed (>3 days)
--      Pending

--------------------------------------------------------

-- QUESTION 3: Customer Spending Pattern

-- Display:
-- • Customer name with first letter capitalized
-- • Month name of purchase
-- • Rounded purchase amount
-- • Absolute value of purchase
-- • CASE:
--      High spender > 15000
--      Medium 8000–15000
--      Low otherwise

--------------------------------------------------------

-- QUESTION 4: Subscription Validity Check

-- For each user:
-- • Extract email domain
-- • Calculate subscription duration in months
-- • Format fee with commas
-- • Find remaining days from today
-- • CASE:
--      Active
--      Expiring Soon (≤30 days)
--      Expired

--------------------------------------------------------

-- QUESTION 5: Loan EMI Risk Categorization

-- Compute:
-- • Monthly interest using power function
-- • Years since loan start
-- • Round EMI
-- • Uppercase customer name
-- • CASE:
--      High Risk if interest > 9
--      Medium Risk
--      Low Risk

--------------------------------------------------------

-- QUESTION 6: Employee Attendance Evaluation

-- Calculate:
-- • Attendance percentage (rounded)
-- • Month name
-- • Difference between total and present days
-- • Lowercase employee name
-- • CASE:
--      Excellent ≥90%
--      Average 75–89%
--      Poor otherwise

--------------------------------------------------------

-- QUESTION 7: Product Discount Validation

-- Derive:
-- • Discount amount
-- • Discount percentage
-- • Day name of sale
-- • Proper case product name
-- • CASE:
--      Valid Discount
--      Overpriced
--      No Discount

--------------------------------------------------------

-- QUESTION 8: Insurance Policy Aging

-- Show:
-- • Policy duration in years
-- • Remaining days
-- • Rounded premium
-- • Uppercase holder name
-- • CASE:
--      Long Term
--      Mid Term
--      Expired

--------------------------------------------------------

-- QUESTION 9: Salary Increment Simulation

-- Calculate:
-- • Years since last hike
-- • Increment using rating logic
-- • New salary (rounded)
-- • Lowercase name
-- • CASE:
--      High Increment
--      Moderate
--      No Increment

--------------------------------------------------------

-- QUESTION 10: Customer Account Status Evaluation

-- Determine:
-- • Absolute balance
-- • Days since last transaction
-- • Proper case branch name
-- • Sign of balance
-- • CASE:
--      Active
--      Dormant
--      Overdrawn

--------------------------------------------------------
-- LEVEL 1
--------------------------------------------------------

-- QUESTION 11: Salary Risk Flagging Based on Tax Shock

-- QUESTION 12: Bonus Abuse Detection

-- QUESTION 13: Experience Parity Validation

-- QUESTION 14: Salary Digit Pattern Analysis

-- QUESTION 15: Odd–Even Salary Compliance

-- QUESTION 16: Salary Inflation Drift

-- QUESTION 17: Salary Sign Integrity Check

-- QUESTION 18: Name Length vs Salary Correlation

-- QUESTION 19: Salary Spike Detection by Month

-- QUESTION 20: Salary Digit Sum Audit

-- QUESTION 21: Weekend Salary Credit Fraud Detection

-- QUESTION 22: Salary Credit Time Drift Analysis

-- QUESTION 23: Salary Decimal Precision Audit

-- QUESTION 24: Salary Growth Power Index

-- QUESTION 25: Salary Symmetry Check

-- QUESTION 26: Leap Year Salary Adjustment Audit

-- QUESTION 27: Fiscal Year Boundary Salary Check

-- QUESTION 28: Salary Random Sampling for Audit

-- QUESTION 29: Salary ASCII Integrity Check

-- QUESTION 30: Salary vs Calendar Symmetry Logic

--------------------------------------------------------
-- LEVEL 2
--------------------------------------------------------

-- QUESTION 31: Employee Login Discipline & Performance Classification

-- QUESTION 32: Past 7 Days Attendance & Productivity Check

-- QUESTION 33: Weekend Work Abuse Detection

-- QUESTION 34: Login Time Deviation & Discipline Score

-- QUESTION 35: Absenteeism vs Performance Correlation
