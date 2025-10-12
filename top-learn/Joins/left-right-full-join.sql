-- Left join show every thing in employee and common rows with people 
select * from Employee E
left join People P
on e.nationalcode=p.nationalcode

-- Right join show every thing in people and common rows with employee
select * from Employee E
right join people P
on e.nationalcode = p.nationalcode

-- Full join show every things between both of tables
select * from Employee E
full join people P
on e.nationalcode=p.nationalcode

