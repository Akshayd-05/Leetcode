# Write your MySQL query statement below
with cte AS (
    select name as Employee, salary as Salary, departmentId, 
    rank() over(partition by departmentId order by salary DESC) as rnk
    from Employee
)
select d.name as Department, e.Employee as Employee, e.Salary
from cte e
left join Department d
on e.departmentId = d.id
where rnk = 1;