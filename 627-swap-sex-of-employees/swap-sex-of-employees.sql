update Salary
set sex = (case when sex = 'm' THEN 'f' ELSE 'm' END);