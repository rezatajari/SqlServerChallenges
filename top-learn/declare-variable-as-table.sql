-- Variables as table 
declare @TestTable table( -- DECLARE @TableVariable TABLE(...) is always “create” — it defines a new table-like object for temporary use.
ID int primary key not null,
Fname nvarchar(30) null)

insert into @TestTable (id,Fname)
values 
(1,'reza'),(2,'ali'),(3,'amir')

select * from @TestTable  -- Should be excuted all of theses query at once because the variable is have temp seassion