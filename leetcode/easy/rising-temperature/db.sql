create table #weather 
(id int primary key not null,
recordDate date,
temperature int)


insert into #weather
(id,recordDate,temperature)
values
(1,'2015-01-01',10),
(2,'2015-01-02',25),
(3,'2015-01-03',20),
(4,'2015-01-04',30)

select * from #weather

SELECT a.id
FROM #weather a
JOIN #weather b
  ON DATEADD(day, -1, a.recordDate) = b.recordDate
WHERE a.temperature > b.temperature;
