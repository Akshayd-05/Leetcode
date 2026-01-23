# Write your MySQL query statement below
with cte AS (
    select visited_on, 
    sum(amount) over(order by visited_on Range BETWEEN INTERVAL 6 day Preceding AND Current Row) as amount,
    round(sum(amount) over(order by visited_on Range BETWEEN INTERVAL 6 day Preceding AND Current Row) / 7, 2) as average_amount
    from Customer
)
select distinct visited_on, amount, average_amount
from cte
order by visited_on
limit 100000
offset 6;