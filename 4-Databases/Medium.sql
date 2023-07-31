/* 570. Managers with at Least 5 Direct Reports */

with t as (
select managerId, count(distinct name) as direct_qty
from Employee 
group by managerId)
 
select e.name from t
inner join Employee e on t.managerId = e.id
where direct_qty >= 5

/* easier solution */
select m.name
from employee as e
inner join employee as m
on e.managerId=m.id
group by e.managerId 
having count(e.id)>=5
