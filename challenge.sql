-- Most Recent Titles
SELECT
	emp_no
	, first_name
	, last_name
	, title
	, from_date as title_from_date
	, salary
INTO most_recent_retirement_titles
FROM (
	SELECT
		retirement_titles.*
		, ROW_NUMBER() OVER (
			PARTITION BY (retirement_titles.emp_no)
			ORDER BY retirement_titles.from_date DESC
		) as row_num
	FROM retirement_titles
) as most_recent_title
WHERE most_recent_title.row_num = 1
ORDER BY emp_no;

-- Total Titles retiring
SELECT
	title
	, count(*) as total_employees
INTO retirement_title_counts
FROM most_recent_retirement_titles
GROUP BY 1
ORDER BY 2 DESC

--

-- Mentorship Employee List
SELECT
	e.emp_no
	, e.first_name
	, e.last_name
	, title as most_recent_title
	, from_date as title_from_date
	, to_date as title_to_date
INTO mentorship_employee_list
FROM employees as e
INNER JOIN	(
	SELECT
		*
		, ROW_NUMBER() OVER(
			PARTITION BY (titles.emp_no)
			ORDER BY titles.to_date DESC
		) as row_num
	FROM titles
) as most_recent_title ON most_recent_title.emp_no = e.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND most_recent_title.row_num = 1
