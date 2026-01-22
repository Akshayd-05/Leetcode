# Write your MySQL query statement below
select distinct employee_id, department_id
from Employee
where primary_flag = 'Y'
UNION 
select distinct employee_id, department_id
from Employee
group by employee_id
having count(*) = 1;