

-- Copy of a data from a table to other table
select E.rc
into testTable
from Estates E

create table test1(
id int not null,
fname nvarchar(30) not null)

create table test2(
id int not null,
fname nvarchar(30) not null,
lname nvarchar(30) not null default 'family')


-- Insert to a table by special select
insert into test2 (id,fname)
	select id,fname from test1