USE employees;

SELECT DISTINCT last_name  from employees ORDER BY last_name desc LIMIT  10;

SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
order by birth_date ASC, hire_date DESC
-- limit 10
LIMIT 5 OFFSET 45;

# The text beneath this line is the formula/code to describe what line 10 is doing...
# limit * (offset - 1)