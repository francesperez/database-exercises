# Aggregate Functions
USE employees;

SELECT COUNT(*) AS 'total_emp', gender FROM employees GROUP BY gender;

SELECT AVG(DATEDIFF(hire_date, birth_date))/365 FROM employees;

SELECT MIN(DATEDIFF(hire_date, birth_date))/365 FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date))/365 FROM employees;

# Functionally identical
SELECT first_name FROM employees GROUP BY first_name;
SELECT DISTINCT first_name FROM employees;


SELECT COUNT(first_name) AS name_no, first_name FROM employees GROUP BY first_name ORDER BY name_no DESC;
