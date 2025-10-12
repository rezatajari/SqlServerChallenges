-- Computed column
create table dbo.Factor(
ID int primary key not null,
Quntity Float not null,
Price int not null,
LineTotal as (Quntity * Price)) -- Computed colomn use when we want generate automatically withoute pesistance data (like light way)




