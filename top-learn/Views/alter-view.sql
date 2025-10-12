
-- If not create first create or not alter
create or alter view dbo.Vw_Personal_query
(
firstName,
country,
mobile
)
as 
select firstName,country,Mobile
from dbo.Personal

select * from dbo.Vw_Personal_query