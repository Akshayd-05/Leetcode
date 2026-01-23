# Write your MySQL query statement below
select u.user_id as buyer_id, u.join_date, ifnull(count(o.order_id), null) as orders_in_2019
from Users u
left join Orders o
on u.user_id = o.buyer_id
AND year(o.order_date) = 2019
group by u.user_id;