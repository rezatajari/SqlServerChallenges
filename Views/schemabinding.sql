-- When we add "with schemabinding" we constraint from table that doesnt remove structure of table
create or alter view dbo.Vw_Emplouees
with schemabinding
as
select lname,mobile,c_id 
from dbo.Emplouees

-- test to doesnt delete that columns
alter table dbo.emplouees
drop column lname