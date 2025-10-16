create table #Courses (
student varchar(30),
class varchar(30))

insert into #Courses
(student,class)
values
('A','Math'),
('B','English'),
('C','Math'),
('D','Biology'),
('E','Math'),
('F','Computer'),
('G','Math'),
('H','Math'),
('I','Math')

select class From #Courses
group by class
having count(class)>=5