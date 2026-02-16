# Write your MySQL query statement below
update salary
set sex = (case when sex = 'f' THEN 'm' ELSE 'f' END);