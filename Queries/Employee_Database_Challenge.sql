Employee_Database_Challenge.sql
SELECT * FROM employees;
SELECT * FROM titles;

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirment_titles
FROM employees as e
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE birth_date >= '1952-01-01' AND birth_date <= '1955-12-31'
ORDER BY emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,	
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirment_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

SELECT title,
	count(title)
INTO retiring_titles
FROM unique_titles
GROUP BY title