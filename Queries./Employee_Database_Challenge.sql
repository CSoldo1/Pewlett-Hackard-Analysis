--Deliverable 1: The Number of Retiring Employees by Title

--1. Retrieve the emp_no, first_name, and last_name columns from the Employees table
SELECT emp_no, first_name, last_name
FROM Employees;

--2 Retrieve the title, from_date, and to_date columns from the Titles table
SELECT title, from_date, to_date
FROM titles;

-- 3. Create a new table using the INTO clause.
-- Name it retirement_table
SELECT em.emp_no, em.first_name, em.last_name, em.birth_date, ti.title, ti.from_date, ti.to_date
INTO temp_table
FROM employees as em
JOIN titles as ti ON
em.emp_no = ti.emp_no

SELECT emp_no, first_name, last_name, title, from_date, to_date
INTO retirement_table
FROM temp_table
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no, first_name, last_name, title, from_date, to_date;

SELECT * FROM retirement_table;

DROP TABLE temp_table;

-- 4. Join both tables on the primary key
-- 5. Filter the data on the birth_date column to retrieve the employees
SELECT em.emp_no, em.first_name, em.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_table2
FROM employees as em
JOIN titles as ti ON
em.emp_no = ti.emp_no
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no, em.first_name, em.last_name, ti.title, ti.from_date, ti.to_date;

-- 6. Export the Retirement Titles table from the previous step at retirement_titles
--and save it to your Data folder in the Pewlett-Hackard_Analysis folder
--Export table as CSV

--7. Before you export your table, confirm that it looks like this image:
SELECT * from retirement_table
SELECT * from retirement_table2

-- 9. Retrieve the employee number, first and last name, and title columns from the retirement titles table
-- 10. Use Distinct with Orderby to remove duplicate rows
-- 11. Exclude those employees that have already left the company by filtering on to_date to keep only
--those dates that are equal to '9999-01-01'
-- 12. Create a unique titles table using the INTO clause
-- 13. Sort unique table in ascending order by employee number
--and descending order by the last date
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_table2
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

SELECT * FROM unique_titles;

-- 17. retrieve the number of titles from the unique_titles table
-- 18. create a retiring titles table to hold the required information
-- 19. group by title, then sort the count column in descending order
-- 20. export the retiring titles table

SELECT COUNT(emp_no) as count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles

-- Deliverable 2: The Employees Eligible for the Mentorship Program

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;







