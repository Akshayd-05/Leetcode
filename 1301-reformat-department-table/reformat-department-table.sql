select id,
sum(case when month = 'Jan' THEN revenue END) as 'Jan_Revenue',
sum(case when month = 'Feb' THEN revenue END) as 'Feb_Revenue', 
sum(case when month = 'Mar' THEN revenue END) as 'Mar_Revenue', 
sum(case when month = 'Apr' THEN revenue END) as 'Apr_Revenue', 
sum(case when month = 'May' THEN revenue END) as 'May_Revenue', 
sum(case when month = 'Jun' THEN revenue END) as 'Jun_Revenue', 
sum(case when month = 'Jul' THEN revenue END) as 'Jul_Revenue', 
sum(case when month = 'Aug' THEN revenue END) as 'Aug_Revenue', 
sum(case when month = 'Sep' THEN revenue END) as 'Sep_Revenue', 
sum(case when month = 'Oct' THEN revenue END) as 'Oct_Revenue',
sum(case when month = 'Nov' THEN revenue END) as 'Nov_Revenue', 
sum(case when month = 'Dec' THEN revenue END) as 'Dec_Revenue'
from Department
group by id;   