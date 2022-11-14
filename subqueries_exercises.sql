USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
SELECT first_name, last_name, t.title
FROM employees AS e
    JOIN titles AS t
        ON t.emp_no = e.emp_no
WHERE first_name = 'Aamod';

# Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
    JOIN  dept_manager as dm
        ON employees.emp_no = dm.emp_no
WHERE gender = 'F' AND to_date = '9999-01-01';


# Find all the department names that currently have female managers.
SELECT dept_name AS Departments_with_Female_Managers
FROM employees
        JOIN  dept_manager as dm
            ON employees.emp_no = dm.emp_no
        JOIN departments
            ON dm.dept_no = departments.dept_no
WHERE gender = 'F' AND to_date = '9999-01-01';


# Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name
FROM employees
WHERE emp_no = (
   SELECT emp_no
   FROM salaries
   ORDER BY salary DESC
   LIMIT 1
    );


# SELECT first_name, last_name
# FROM employees
# JOIN salaries s
# ON employees.emp_no = s.emp_no
# ORDER BY salary DESC LIMIT 1;
