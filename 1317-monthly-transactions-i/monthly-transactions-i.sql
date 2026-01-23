# Write your MySQL query statement below
select date_format(trans_date, '%Y-%m') as month, country, count(*) as trans_count, sum(case when state = 'approved' THEN 1 ELSE 0 END) as approved_count, sum(amount) as trans_total_amount, sum((state = 'approved') * amount) as approved_total_amount 
from transactions
group by month, country;