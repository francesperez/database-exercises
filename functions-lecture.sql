USE employees;

SELECT DISTINCT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY DAYOFMONTH(hire_date);

SELECT NOW();

SELECT DATEDIFF(NOW(), hire_date) FROM employees WHERE emp_no = 10006;
