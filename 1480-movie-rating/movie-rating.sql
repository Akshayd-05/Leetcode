# Write your MySQL query statement below
(
    select u.name as results
from Users u
join MovieRating r
on u.user_id = r.user_id
group by u.name
order by count(distinct movie_id) DESC, u.name
limit 1
)
UNION ALL
(
select m.title as results
from Movies m
join MovieRating r
on m.movie_id = r.movie_id
where r.created_at >= '2020-02-01' AND r.created_at < '2020-03-01'
group by m.title
order by avg(rating) DESC, m.title
limit 1
);