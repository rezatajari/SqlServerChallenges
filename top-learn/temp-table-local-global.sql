-- Temp table (local)
create table #Temp_local ( -- # It is mean temp and local is need one hashtag
ID int primary key not null,
Fname nvarchar(30) not null)

-- Add to temp data
insert into #Temp_local (id,fname)
values
(1,'reza'),(2,'ali'),(3,'amir')


-- Temp table (global) can call from other sesion 
create table ##Temp_global ( -- It is mean temp and global is need two hastag
ID int primary key not null,
Fname nvarchar(30) not null)

insert into ##Temp_global (id,fname)
values
(1,'reza'),(2,'ali'),(3,'amir')

