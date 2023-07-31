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

/* 1934. Confirmation Rate */

select s.user_id,
       round(avg(if(c.action="confirmed",1,0)),2)  as confirmation_rate
from Signups s
left join Confirmations c on c.user_id = s.user_id 
group by s.user_id

/* 1193. Monthly Transactions I */
 
select DATE_FORMAT(trans_date, '%Y-%m') as month,
       country,
       count(*) as trans_count,
       sum(case when state = 'approved' then 1 else 0 end) as approved_count,
       sum(amount) as trans_total_amount,
       sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from Transactions
group by 1, 2
