USE employees;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya')
    AND gender = 'M'
    ORDER BY last_name;

# Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT * FROM employees WHERE last_name LIKE ('%E%') ORDER BY emp_no DESC;

Select last_name FROM employees WHERE last_name LIKE ('%q%');

SELECT last_name FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';
