# Write your MySQL query statement below
with cte AS (
    select count(id) as total_count
    from Seat
)
select 
(case when id % 2 != 0 AND id != total_count THEN id + 1
when id % 2 = 0 THEN id - 1
when id % 2 != 0 AND id = total_count THEN id END) as id,
student
from seat
cross join cte
order by id;