create or alter  view [dbo].[Vw_Employee_With_Option]
with encryption -- For encryption of a view to anyone can't see it
as
select * from Employee
where ID>=2
with check option 


