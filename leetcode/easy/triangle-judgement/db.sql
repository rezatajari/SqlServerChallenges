create table Triangle (
x int,
y int,
z int,
primary key (x,y,z)
);


insert into Triangle
(x,y,z)
values
(13,15,30),
(10,20,15)


select *,
	case 
	when (x+y>z) and (x+z>y) and (y+z>x)
	then 'Yes'
	else 'No'
	end as Triangle
from triangle
	