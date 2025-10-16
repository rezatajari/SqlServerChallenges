create table #Employee (
empId int primary key,
name varchar(30),
supervisor int,
salary int)

insert into #Employee 
(empId,name,supervisor,salary)
values
(3,'Brad',null,4000),
(1,'John',3,1000),
(2,'Dan',3,2000),
(4,'Thomas',3,4000)

create table #bonus (
empId int primary key,
bonus int)

insert into #bonus 
(empId,bonus)
values
(2,500),
(4,2000)

select e.name,b.bonus from #Employee e
left join #Bonus b on e.empId=b.empId
where b.bonus<1000 or b.bonus is null
order by b.bonus