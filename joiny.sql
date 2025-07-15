SELECT e.first_name, j.title, d.department_name
FROM employees AS e
INNER JOIN jobs AS j
ON e.job_id = j.id
INNER JOIN departments AS d
ON e.department_id = d.id;


-- 1. Wyświetl imię oraz nazwisko wszystkich pracowników, nazwę działu, w
--  którym pracują a także nazwę miasta, w którym siedzibę ma dany dział.

SELECT employees.first_name, employees.last_name, departments.department_name, locations.city
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id
INNER JOIN locations
ON departments.location_id = locations.id; 

--  2. Wyświetl nazwę wszystkich działów oraz nazwę miast, w których znajdują
--  się dane działy. Rekordy sortuj alfabetycznie po kolumnie miasto.
 
SELECT departments.department_name, locations.city
FROM departments
INNER JOIN locations
ON departments.location_id = locations.id
ORDER BY city ASC;

--  3. Wyświetl imię oraz datę urodzenia pracowników urodzony po 1 stycznia
--  1994 r. a także nazwę działu, w którym pracują.

SELECT employees.first_name, employees.birth_date, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id
WHERE birth_date > '1994-01-01';


--  4. Wyświetl imię pracowników zatrudnionych w dziale o numerze id 1 i 6, a
--  także nazwę działu, w którym pracują oraz nazwę miasta, w którym znajduje
--  się dany dział. Rekordy sortuj alfabetycznie po kolumnie imię

SELECT employees.first_name, employees.department_id, departments.department_name, locations.city
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id
INNER JOIN locations
ON departments.location_id = locations.id
WHERE department_id IN (1,6)
ORDER BY first_name ASC ;


-- Ustawianie id algorytmowego

CREATE TABLE testowa (
id CHAR(36) NOT NULL DEFAULT (UUID()),
title VARCHAR(255),
PRIMARY KEY (id)
);
