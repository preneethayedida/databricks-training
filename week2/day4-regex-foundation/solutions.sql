-- 1
SELECT REGEXP_SUBSTR('123ABc', '[0-9]') AS single_digit;

-- 2
SELECT REGEXP_SUBSTR('123ABc', '[A-Za-z]+') AS alphabets;

-- 3
SELECT REGEXP_SUBSTR('123abc', '^[0-9]') AS starts_with_digit;

-- 4
SELECT REGEXP_SUBSTR('abc123', '[0-9]$') AS ends_with_digit;

-- 5
SELECT REGEXP_SUBSTR('12345678abc', '[0-9]{2}') AS two_digits;

-- 6
SELECT REGEXP_SUBSTR('abcdefghi123', '[A-Za-z]{2}') AS two_alphabets;

-- 7
SELECT REGEXP_SUBSTR('123abc567', '[0-9]+') AS continuous_digits;

-- 8
SELECT REGEXP_SUBSTR('abc123cde', '[A-Za-z]+') AS continuous_alphabets;

-- 9
SELECT REGEXP_SUBSTR('abc123gef', '[0-9]+') AS middle_digits;

-- 10
SELECT REGEXP_SUBSTR('karthik@gmail.com', '@[a-zA-Z.]+') AS email_domain;

-- 11
SELECT REGEXP_SUBSTR('karthik@gmail.com', '\\.[a-zA-Z]+$') AS top_level_domain;

-- 12
SELECT REGEXP_SUBSTR('+91-9989454737', '\\+91-[0-9]{10}') AS phone_match;

-- 13
SELECT REPLACE(REGEXP_SUBSTR('karthik@gmail.com', '@[a-zA-Z.]+'), '@', '') AS cleaned_domain;

-- 14
SELECT REGEXP_SUBSTR(
'karthik.kumar44@gmail.com',
'[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}'
) AS valid_email;

-- 15
SELECT REGEXP_SUBSTR('123abc567', '[0-9A-Za-z]+') AS alphanumeric_value;
