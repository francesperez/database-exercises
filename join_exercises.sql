USE employees;

#  Write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
        WHERE de.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
        WHERE de.to_date = '9999-01-01' AND e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, COUNT(*) AS Total
FROM titles as t
    JOIN dept_emp as de
        ON de.emp_no = t.emp_no
    JOIN departments as d
        ON d.dept_no = de.dept_no
    WHERE d.dept_name = 'Customer Service' AND t.to_date = '9999-01-01'
    GROUP BY t.title;

# Find the current salary of all current managers.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager,s.salary
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
        JOIN salaries AS s
            ON e.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(managers.first_name, '
', managers
    .last_name)
FROM employees as e
   JOIN dept_emp as de
    ON de.emp_no = e.emp_no
   JOIN  departments as d
       on de.dept_no = d.dept_no
    JOIN employees as managers
    ON managers.emp_no = e.emp_no;


