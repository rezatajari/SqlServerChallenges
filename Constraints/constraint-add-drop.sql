-- Add contraint for limitation on somethings
alter table Employee
add check (len (Mobile)>=8 and len(Mobile) <=12)

-- Drop the constraint
alter table Employee
drop constraint if exists [CK__Employee__Mobile__778AC167]

-- Get the rows for my somethings new check is not passed the new constraint
select * from Employee 
where (len (mobile)<8 or len (mobile)>12)

-- Update the rows is need to have like my constraint 
update Employee 
set Mobile='000000000'
where (len (mobile)<8 or len (mobile)>12)

