create table Salary (
id int primary key,
name varchar(30),
sex char(1) check (sex in ('m','f')),
salary int)

insert into Salary 
(id,name,sex,salary)
values
(1,'A','m',2500),
(2,'B','f',1500),
(3,'C','m',5500),
(4,'D','f',500)


update Salary
set sex= case
when sex='f' then 'm'
when sex='m' then 'f'
end
