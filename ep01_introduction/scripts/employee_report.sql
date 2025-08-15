USE employee_info;

-- 1. How many employees joined in year X at location Y?
SELECT COUNT(city) FROM employees WHERE city = 'Bangalore' and joining_year = 2013;

SELECT COUNT(joining_year) FROM employees WHERE city = 'Bangalore' and joining_year = 2013;

SELECT COUNT(*) FROM employees WHERE city = 'Bangalore' and joining_year = 2013;

-- ISSUES WITH COUNT(*)
SELECT COUNT(*) FROM employees;

INSERT INTO employees VALUES(
NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

-- COUNT(*) CONSIDERS NULL COLUMNS
SELECT COUNT(*) FROM employees;

SELECT COUNT(city) FROM employees;

#########################################################################################

-- 2. What is the average experience in months for a Bachelor’s degree holder?
SELECT AVG(experience_current_domain) * 12 FROM employees WHERE education = 'Bachelors';

#########################################################################################
-- 3. What is the M to F ratio at each Payment tier? 
SELECT 
payment_tier,
SUM(IF(gender = 'Male', 1, 0)) Total_male,
SUM(IF(gender = 'Female', 1, 0)) Total_female,
SUM(IF(gender = 'Male', 1, 0))/ NULLIF(SUM(IF(gender = 'Female', 1, 0)), 0) AS M_F_ratio
FROM employees
WHERE payment_tier is NOT NULL
GROUP BY payment_tier
ORDER BY payment_tier;