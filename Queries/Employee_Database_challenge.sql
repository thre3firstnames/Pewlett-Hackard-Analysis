-- From employeees, retrieve (emp_no, first_name, last_name) - check
-- From titles retrieve (title, from_date, to_date) - check
-- Create a new Table with INTO -check
-- Join the tables on the PK - check
-- filer data from the 'birth_date' column to retrieve employees born between 1952-1955 - check
-- order by employee number -- check
-- Export the retirement_titles table as retirement_titles.csv -- check

-- Number of Retiring Employees by Title
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

-- retrieve emp_no, first, last, and title FROM retirement_titles -- check
-- Use Distinct on to retrieve the first occurance of the employee number. -- check
-- exclude employees who have already left the company by using to_date -- check
-- create a unique table -- check
-- sort the unique table in ascending order by empployee number and descending order by the last date of the most recent title -- check
-- export unique titles -- check

-- Use Dictinct with Orderby to remove duplicate rows from retirementt_titles
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, title DESC;

-- retrieve number of employees by their most recent job title who are about to retire -- check
-- retrieve the number of titles from the Unique titles table -- check
-- create a retiring titles table -- check
-- group the table by title then sort the count column in desc order -- check
-- export the retiring titles retiring_titles.csv -- check

-- Count number of unique titles, order by descending count
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;
