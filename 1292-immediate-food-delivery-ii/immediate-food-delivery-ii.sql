# Write your MySQL query statement below
with cte AS (
    select customer_id, 
    (case when order_date = customer_pref_delivery_date THEN 'immediate' ELSE 'scheduled' END) as order_status,
    rank() over(partition by customer_id order by order_date) as rnk
    from Delivery
)
select 
round(sum(case when order_status = 'immediate' AND rnk = 1 THEN 1 ELSE 0 END) * 100.0 / count(distinct customer_id), 2) as immediate_percentage
from cte;  