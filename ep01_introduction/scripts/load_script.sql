-- SCRIPT TO LOAD EMPLOYEE INFORMATION INTO A MYSQL DB.

-- CREATE A DATABASE named employee_info
CREATE DATABASE employee_info;
USE employee_info;

-- CREATE EMPLOYEES TABLE WITH PROPER DATA TYPES.
CREATE TABLE employees(
emp_id BIGINT AUTO_INCREMENT PRIMARY KEY,
education VARCHAR(255),
joining_year INT,
city VARCHAR(255),
payment_tier INT,
age INT,
gender VARCHAR(255),
ever_benched ENUM('Yes', 'No'),
experience_current_domain INT,
leave_info BOOLEAN
);

DESCRIBE employees;

SHOW VARIABLES LIKE 'local_infile';

-- SET FLAG TO 1 local_infile = OFF
SET GLOBAL local_infile = 1;

-- QUERY TO RETURN THE FILE PATH TO WHICH EMPLOYEE.CSV FILE NEEDS TO BE UPLOADED.
SHOW VARIABLES LIKE 'secure_file_priv';

-- REPLACE PATH WITH THE CORRECT PATH RETURNED IN THE ABOVE QUERY.
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Employee.csv'
INTO TABLE employees
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@education, @joining_year, @city, @payment_tier, @age, @gender, @ever_benched, 
 @experience_current_domain, @leave_info)
SET 
education = @education,
joining_year = @joining_year,
city = @city,
payment_tier = @payment_tier,
age = @age,
gender = @gender,
ever_benched = @ever_benched,
experience_current_domain = @experience_current_domain,
leave_info = IF(@leave_info = '1', TRUE, FALSE);

SELECT * FROM employees;