alter table personal	
add City nvarchar(30) null

go

alter table personal
add constraint DF_City  -- Limitation condition 
default 'Tehran' For City  -- Default if doesnt filld from user
