-- 26
SELECT * FROM jobs
WHERE title LIKE 'HR%';

-- 27
SELECT * FROM jobs
WHERE title LIKE '%Software%';

-- 28
SELECT AVG(min_salary)
AS average_min_salary_sales
FROM jobs 
WHERE title LIKE "Sales%";

-- 29
SELECT * FROM jobs
WHERE title LIKE '_u%';

-- 30
SELECT * FROM employees
WHERE first_name LIKE 'A____';

-- 31
SELECT * FROM employees
WHERE first_name LIKE 'E%a';

-- 32
SELECT * FROM employees 
WHERE NOT email LIKE "%@gmail.com"
ORDER BY email ASC;

-- 33
SELECT * FROM employees
WHERE first_name IN ("Adam","Alice","Tom");

-- 34
SELECT * FROM employees
WHERE department_id NOT IN ("2","3","5");

-- 35
SELECT * FROM jobs
WHERE min_salary NOT BETWEEN "3000" AND "8000";

-- 36
SELECT * FROM employees
WHERE YEAR(hire_date) IN (2015, 2016)
AND department_id NOT IN ("2", "5");

-- 37
SELECT * FROM employees
WHERE YEAR(birth_date)=1990
ORDER BY birth_date ASC;

-- 38
SELECT CONCAT(first_name,' ', last_name,' ', birth_date) AS employee FROM employees
WHERE job_id='3';
 
-- 39
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.id;

-- 40
SELECT locations.city, departments.department_name FROM departments
JOIN locations ON departments.location_id = locations.id
ORDER BY city ASC;