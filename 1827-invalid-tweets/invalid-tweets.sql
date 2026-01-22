# Write your MySQL query statement below
select tweet_id
from Tweets
group by content
having length(content) > 15;