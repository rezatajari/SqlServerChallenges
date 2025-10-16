create table #Customer (
id int primary key,
name varchar(30),
referee_id int)

insert into #Customer
(id,name,referee_id)
values
(1,'Will',null),
(2,'Jane',null),
(3,'Alex',2),
(4,'Bill',null),
(5,'Zack',1),
(6,'Mark',2)


select [name] from #Customer
where referee_id <> 2 or referee_id is null