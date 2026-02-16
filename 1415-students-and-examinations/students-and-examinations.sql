# Write your MySQL query statement below
select s.student_id, s.student_name, s2.subject_name, count(e.subject_name) as attended_exams 
from Students s 
join Subjects s2
left join Examinations e
on e.subject_name = s2.subject_name
AND s.student_id = e.student_id
group by s.student_id, s2.subject_name
order by s.student_id, s2.subject_name;