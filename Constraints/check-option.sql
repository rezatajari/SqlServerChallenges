create or alter view Vw_Employee_With_Option
as
select * from Employee
where ID>=2
with check option -- For execute where on currenct view

