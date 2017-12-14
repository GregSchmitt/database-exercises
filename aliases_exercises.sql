USE employees;

# Return 10 employees in a result set named 'full_name' in
# the format of 'lastname, firstname' for each employee.
SELECT concat(last_name, ', ', first_name) full_name
FROM employees
LIMIT 10;


# Add the date of birth for each employee as 'DOB' to the query.
SELECT concat(last_name, ', ', first_name) full_name,
       e.birth_date 'Date of birth'
FROM employees e
LIMIT 10;


# Update the query to format full name to include the employee number so
# it is formatted as 'employee number - lastname, firstname'.
SELECT concat(e.emp_no, ' - ', e.last_name, ', ', e.first_name) full_name,
       e.birth_date DOB
FROM employees e
LIMIT 10;

# We use aliases to remove ambiguity from column names
SELECT e.emp_no, s.emp_no
FROM employees e, salaries s;