-- Number of Retiring Employees by Title
-- From employeees, retrieve (emp_no, first_name, last_name) - check
-- From titles retrieve (title, from_date, to_date) - check
-- Create a new Table with INTO -check
-- Join the tables on the PK - check
-- filer data from the 'birth_date' column to retrieve employees born between 1952-1955 - check
-- order by employee number -- check
-- Export the retirement_titles table as retirement_titles.csv -- check


SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
