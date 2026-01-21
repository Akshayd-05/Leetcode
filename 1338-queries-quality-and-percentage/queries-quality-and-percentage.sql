select query_name,
round(avg(rating / position), 2) as quality,
round(sum(case when rating < 3 THEN 1 ELSE 0 END) * 100.0 / count(*), 2) as poor_query_percentage 
from Queries
group by query_name;