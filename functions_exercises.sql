USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
      SELECT CONCAT(first_name,' ',last_name) AS 'full_name' FROM employees
      WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
      AND first_name LIKE 'E%' AND first_name LIKE '%E';

# Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE
      MONTH(birth_date) = 12
      AND DAY(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees
      WHERE MONTH(birth_date) = 12
      AND DAY(birth_date) = 25
      AND YEAR(hire_date) BETWEEN 1990 AND 1999;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees
      WHERE MONTH(birth_date) = 12
      AND DAY(birth_date) = 25
      AND YEAR(hire_date) BETWEEN 1990 AND 1999
      ORDER BY birth_date, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have
# been working at the company
SELECT *, DATEDIFF(NOW(), hire_date) AS days_working FROM employees
      WHERE MONTH(birth_date) = 12
      AND DAY(birth_date) = 25
      AND YEAR(hire_date) LIKE '199%'
      ORDER BY days_working DESC;
