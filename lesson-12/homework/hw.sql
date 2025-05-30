--1. Combine Two Tables
select a.firstName, a.lastName,p.city,p.state from Address as p right join Person as a on  a.personId=p.personId
order by a.personId
--2. Employees Earning More Than Their Managers
select * from Employee as emp
join Employee as man on emp.managerId=man.id
where emp.salary>=man.salary

--3. Duplicate Emails
select email
--count(email) as cnt 
from Person
group by email
having count(email)=2

--4. Delete Duplicate Emails



--5. Find those parents who has only girls.
select distinct g.ParentName from girls as g left join boys as b on 
g.ParentName=b.ParentName
where b.id is null
