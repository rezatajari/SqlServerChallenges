



-- When we want change manually set identity a row
set identity_insert top_123 on
insert top_123 (fname)
values (N'Zahra'); -- N is mean unique

set identity_insert top_123 off -- After insert manually id we can change the state of identity is automatically 

