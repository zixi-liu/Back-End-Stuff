
/* 185. Department Top Three Salaries */

with t as (
select d.name as Department,
       e.name as Employee,
       e.salary as Salary,
       dense_rank() over(partition by d.name order by salary desc) as s_rank
from Employee e
left join Department d on e.departmentId = d.id
group by d.name, e.name, e.salary)

select Department, Employee, Salary from t
where s_rank <=3
