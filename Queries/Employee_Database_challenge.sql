-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO uniq_title
FROM ret_titles
ORDER BY emp_no, to_date DESC;



select count(title), title
into ing_titles
from uniq_title
group by title
order by count(title) desc;



select distinct on (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
into mentorship
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join titles as t
on(e.emp_no = t.emp_no)
where de.to_date = '9999-01-01' and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by emp_no;