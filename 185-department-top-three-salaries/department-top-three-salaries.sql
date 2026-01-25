# Write your MySQL query statement below
with cte AS (
    select name, salary, departmentId,
    DENSE_RANK() over(partition by departmentId order by salary DESC) as rnk
    from Employee
)
select d.name as Department, e.name as Employee, e.salary as Salary
from cte e
left join Department d
on e.departmentId = d.id
where rnk <= 3;