SELECT * FROM departments;

-- alias
SELECT last_name AS Nazwisko FROM employees;

-- 1
SELECT email FROM employees;

-- 2
SELECT first_name, last_name, id FROM employees;

-- 3
SELECT id, email FROM employees;
SELECT id AS employee_id, email AS private_email FROM employees;

-- 4
SELECT DISTINCT first_name FROM employees;

-- 5
SELECT * FROM employees WHERE first_name="Tom";

-- 6
SELECT COUNT(DISTINCT first_name) AS number_of_employees FROM employees;

-- 7
SELECT * FROM employees WHERE hire_date > "2019-01-01";

-- 8
SELECT * FROM jobs WHERE min_salary < "5000";

-- 9
SELECT * FROM employees WHERE first_name =  "Adam" AND last_name = "Irwin";

-- 10
SELECT * FROM employees WHERE first_name =  "Tom" OR first_name =  "John";

-- 11
SELECT * FROM employees WHERE last_name =  "Martinez" AND birth_date > "1988-01-01";

-- 12
SELECT * FROM employees WHERE department_id <> "3";

-- 13
SELECT * FROM employees WHERE department_id = "6" AND (job_id = "2" OR job_id = "4");

-- 14
SELECT * FROM employees WHERE department_id = "3" AND job_id <> "2";

-- 15
SELECT * FROM jobs ORDER BY min_salary DESC;

-- 16
SELECT * FROM jobs ORDER BY min_salary DESC, max_salary DESC;

-- 17
SELECT * FROM jobs WHERE min_salary = "3000" ORDER BY max_salary ASC;

-- 18
SELECT * FROM locations WHERE street_address IS NULL;

-- 19
SELECT * FROM employees LIMIT 3;

-- 20
SELECT * FROM employees LIMIT 10,5;

-- 21
SELECT * FROM employees WHERE department_id = "3" ORDER BY hire_date DESC LIMIT 5; 

-- 22
SELECT birth_date AS oldest_employee FROM employees
ORDER BY birth_date ASC
LIMIT 1;

-- 23
SELECT birth_date AS youngest_employee_department_2 FROM employees
WHERE department_id = "3"
ORDER BY birth_date DESC
LIMIT 1;

-- 24
SELECT first_name, last_name FROM employees ORDER BY hire_date DESC LIMIT 1;

-- 25
SELECT COUNT(*) AS number_of_software_engineers FROM employees WHERE job_id = "2";