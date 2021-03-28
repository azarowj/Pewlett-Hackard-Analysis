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