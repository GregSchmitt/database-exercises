USE employees;

SELECT DISTINCT title
FROM titles;



SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY last_name;



SELECT
  first_name,
  last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY first_name, last_name;






-- 6.
SELECT count(*), last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count(*) DESC;



-- 7.
SELECT count(gender)
  gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;






-- ======================== Aggregate Functions ==========================

-- Aggregate Functions(functions with memory)
-- count, avg, sum , max, min

-- In your script, use DISTINCT to find the unique titles
-- in the titles table. Your results should look like:
SELECT DISTINCT title
FROM titles;

SELECT count(*), first_name, last_name
FROM employees
WHERE first_name like '%z%'
GROUP BY first_name, last_name ASC;


-- salaries for everyone in the company
SELECT sum(salary), to_date -- projection
FROM salaries
WHERE to_date = '9999-01-01' -- current salaries
GROUP BY to_date;


-- who makes the most
SELECT max(salary), to_date -- projection
FROM salaries
WHERE to_date = '9999-01-01' -- current salaries
GROUP BY to_date;


-- who make the least
SELECT min(salary), to_date -- projection
FROM salaries
WHERE to_date = '9999-01-01' -- current salaries
GROUP BY to_date;


-- average pay
SELECT avg(salary), to_date -- projection
FROM salaries
WHERE to_date = '9999-01-01' -- current salaries
GROUP BY to_date;
