INSERT INTO pople
(fname, lname, tel, mobile, city, nationalcode)
VALUES
('hasan','baghery','123456','0912345678','mashhad','23456778'),
('asef','mohammadi','325725','0936725725','sabzevar','53253523'),
('mansor','tahizadeh','494324','0922123456','neyshabour','90654305'),
('navid','hoseiny','567722','0913767722','esfehan','12067624'),
('amirhasan','vahdat','357334','0936737334','yazd','53673063'),
('omid','rafati','357573','0913577573','tehran','123456788'),
('amir','daneshi','357573','0913577573','tehran','77859656');

insert into Employee
(fname,lname,mobile,nationalcode)
values('omid','rafati','111111','123456788')


select * from pople
select * from Employee

-- inner join actually is mean common data between both of tables based on unique column
select * from Employee E
inner join pople P
on e.nationalcode = p.nationalcode