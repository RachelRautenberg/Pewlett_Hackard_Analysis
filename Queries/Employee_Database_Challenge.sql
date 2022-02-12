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
WHERE birth_date (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
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
ORDER BY count

-- Mentorship Eligibility
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	 AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC


-- Additional queries
ELECT ut.emp_no,
	e.hire_date
INTO retirement_year1
FROM unique_titles as ut
INNER JOIN employees as e
ON (ut.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1952-12-31')

SELECT ut.emp_no,
	e.hire_date
INTO retirement_year2
FROM unique_titles as ut
INNER JOIN employees as e
ON (ut.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1953-01-01' AND '1953-12-31')

SELECT ut.emp_no,
	e.hire_date
INTO retirement_year3
FROM unique_titles as ut
INNER JOIN employees as e
ON (ut.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1954-01-01' AND '1954-12-31')

SELECT ut.emp_no,
	e.hire_date
INTO retirement_year4
FROM unique_titles as ut
INNER JOIN employees as e
ON (ut.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1955-01-01' AND '1955-12-31')

SELECT
	(SELECT COUNT(*)
	FROM retirement_year1) AS year1,
	(SELECT COUNT(*)
	FROM retirement_year2) AS year2,
	(SELECT COUNT(*)
	FROM retirement_year3) AS year3,
	(SELECT COUNT(*)
	FROM retirement_year4) AS year4
INTO retirement_distribution