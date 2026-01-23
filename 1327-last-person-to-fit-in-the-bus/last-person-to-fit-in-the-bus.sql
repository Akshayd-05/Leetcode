# Write your MySQL query statement below
with cte AS (
    select person_name, 
    sum(weight) over(order by turn) as total_weight
    from Queue
)
select person_name
from cte
where total_weight <= 1000
order by total_weight DESC
limit 1;