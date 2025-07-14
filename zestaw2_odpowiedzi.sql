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

