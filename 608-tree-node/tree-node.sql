# Write your MySQL query statement below
select id,
(case when p_id is null THEN 'Root'
when id in (select p_id from Tree) THEN 'Inner'
ELSE 'Leaf' END) as type
from Tree;