CREATE DATABASE company;

USE company;

CREATE TABLE employee(
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(200),
    department_code VARCHAR(10),
    join_date DATE,
    salary FLOAT
);

INSERT INTO employee(employee_name, department_code, join_date, salary) VALUES
('Alice', 'IT', '2020-08-06', 60000),
('Bob', 'IT', '2020-08-06', 60000),
('Mark', 'DAE', '2022-08-01', 80000),
('Jane', 'DAE', '2022-01-06', 80000),
('Greg', 'FIN', '2023-01-02', 75000);

SELECT * FROM employee;

SELECT employee_name FROM employee WHERE department_code = 'IT';

SELECT employee_name, salary FROM employee WHERE YEAR(join_date) = 2020 
AND salary IN (SELECT MAX(salary) 
	FROM employee GROUP BY YEAR(join_date)
);