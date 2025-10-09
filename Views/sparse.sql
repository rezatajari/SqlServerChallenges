

alter table dbo.personal
alter column Country nvarchar(30) sparse null -- for null performanse not checked

-- For see sparse status
select [name] as column_name,is_sparse,is_column_set
from sys.all_columns
where OBJECT_NAME(object_id) ='Personal' -- table name
and (is_sparse= 0 or is_column_set=0)
