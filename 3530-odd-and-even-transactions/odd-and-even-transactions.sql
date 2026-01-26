# Write your MySQL query statement below
select transaction_date,
sum(case when amount % 2 != 0 THEN amount ELSE 0 END) as odd_sum,
sum(case when amount % 2 = 0 THEN amount ELSE 0 END) as even_sum
from transactions
group by transaction_date
order by transaction_date;