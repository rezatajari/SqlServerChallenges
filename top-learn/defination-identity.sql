


-- Defination primary and set as identity and seed for it
create table dbo.test(
ID int identity (1000,10) primary key not null,
Fname nvarchar(30))

