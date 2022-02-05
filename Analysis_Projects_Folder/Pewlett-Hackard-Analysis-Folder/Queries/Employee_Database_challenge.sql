-- Number of Retiring Employees by Title
-- From employeees, retrieve (emp_no, first_name, last_name)
-- From titles retrieve (title, from_date, to_date)
-- Create a new Table with INTO
-- Join the tables on the PK
-- filer data from the 'birth_date' column to retrieve employees born between 1952-1955
-- order by employee number
-- Export the retirement_titles table as retirement_titles.csv





-- SELECT ri.emp_no,
-- ri.first_name,
-- ri.last_name,
-- d.dept_name
-- -- INTO sales_dev_reitrees
-- FROM retirement_info as ri
-- INNER JOIN dept_emp AS de
-- ON (ri.emp_no = de.emp_no)
-- INNER JOIN departments AS d
-- ON (de.dept_no = d.dept_no)
-- WHERE d.dept_name IN ('Sales','Development');