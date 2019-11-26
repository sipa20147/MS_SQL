
select abs(-25)

select cos(45*3.14/180)

select ceiling(13.65)

select floor(13.45)

select power(4,3)

select round(125.383,2)

select round(125.383,2)

select sign(-10)

select sign(0)

select sign(10)

select sqrt(49)

select round(235.198,2,2)

select round(235.198,-2,-2)




use lr10

select char(78)

select lastname + ' is a ' + title from humanresources.employees where empid = 7

select upper('Белорусский государственный университет')

select ltrim('   Минск')

select lower('БЕЛОРУССКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ')

select substring('УНИВЕРСИТЕТ',4,8)

select * from DPROD where substring(descrip,1,10) = 'Телевизор'

select * from DPROD where substring(descrip,1,20) = 'Телевизор Panasonic'

select * from DPROD where substring(descrip,1,10) = 'Телевизор' and price < 300

select replace('0123456789abcdefghijklmnopqrstuvwxyz','n','N')




select CHARINDEX('OR',SUBSTRING('CORPORATE FLOOR',2,15))+2

select CHARINDEX('OR',SUBSTRING('CORPORATE FLOOR',3,15))+3

select CHARINDEX('OR',SUBSTRING('CORPORATE FLOOR',-3,15))+15-3

select len('УНИВЕРСИТЕТ')





select convert(varchar(10),hiredate) from HumanResources.Employees

select cast(hiredate AS varchar(10)) from HumanResources.Employees

select year(hiredate) from HumanResources.Employees where deptno = 20

set identity_insert HumanResources.Employees ON

insert into HumanResources.Employees(empid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,phone,mgrid,sal,comm,deptno)
 values(10,'Tylets','Pavel','ingeneer','Mr',convert(datetime,'18-07-1993'),convert(datetime,'23-09-19'),'pr G.Pravda','Minsk','Minsk','220000','BY','(555)555-55-55',10,6000,1500,10)
 set identity_insert HumanResources.Employees OFF

 select round(sal,2) from HumanResources.Employees




 select GETDATE(), DATEDIFF(day,getdate(),cast('30-11-19' as date))

 select mydate, datename(weekday,mydate)  from (select DATEADD(day,1,'2019-10-09') as mydate  union select DATEADD(day,2,'2019-10-09') 
 union select DATEADD(day,3,'2019-10-09') union select DATEADD(day,4,'2019-10-09') union select DATEADD(day,5,'2019-10-09')
  union select DATEADD(day,6,'2019-10-09') union select DATEADD(day,7,'2019-10-09')) as mydate2  where datename(weekday,mydate) = 'вторник'

select DATEADD(year,2,hiredate) from HumanResources.Employees where title = 'Vice President, Sales'
 



 select * from HumanResources.Employees where title in (select title from HumanResources.Employees where deptno = 10) and deptno != 10

 select firstname, title from HumanResources.Employees where deptno = (select deptno from HumanResources.Employees where lastname = 'Cameron')

 select firstname, title from HumanResources.Employees where deptno = (select deptno from HumanResources.Employees where lastname = 'Funk')
 



 select max(hiredate) from HumanResources.Employees

 select max(sal) maximal, avg(sal) average,min(sal) minimal from HumanResources.Employees

 select max(sal) maximal, avg(sal) average,min(sal) minimal from HumanResources.Employees where deptno = 30

 select sum(sal) summary from HumanResources.Employees where deptno = 20

 select * from HumanResources.Employees where sal = (select min(sal) from HumanResources.Employees)
 
 select * from HumanResources.Employees where sal > (select avg(sal) from HumanResources.Employees) and deptno = 10

 select * from HumanResources.Employees where sal = (select max(sal) from HumanResources.Employees where deptno = 20) and deptno = 20

 select * from dbo.DPROD where price = (select max(price) from dbo.DPROD)

 select * from dbo.DPROD where price = (select max(price) from dbo.DPROD where descrip like 'Кроссовки%') and descrip like 'Кроссовки%'

 select * from dbo.DPROD where price = (select max(price) from dbo.DPROD where substring(descrip,1,9) = 'Кроссовки') and substring(descrip,1,9) = 'Кроссовки'

 select * from dbo.DPROD where price > (select avg(price) from dbo.DPROD)

 select sum(price) from dbo.DPROD

 select * from dbo.DPROD where price < (select avg(price) from dbo.DPROD where descrip like 'Телевизор SONY%') and descrip like 'Телевизор SONY%'




select avg(sal),title from HumanResources.Employees group by title

select max(sal), min(sal),title from HumanResources.Employees group by title

select sum(sal),deptno from HumanResources.Employees group by deptno

select firstname,DNAME, LOC from HumanResources.Employees e left join humanresources.dept d on e.deptno = d.deptno where comm is not NULL

select * from HumanResources.Employees e left join humanresources.dept d on e.deptno = d.deptno where LOC ='NEW YORK'

select sum(sal), d.DEPTNO from HumanResources.Employees e full join humanresources.dept d on e.deptno = d.deptno group by d.deptno

select min(sal), max(sal) from HumanResources.Employees group by deptno having min(sal) < 1300

select * from HumanResources.Employees e1 where sal = (select min(sal) from HumanResources.Employees e2 group by deptno having e1.deptno = e2.deptno) 
or sal = (select max(sal) from HumanResources.Employees e2 group by deptno having e1.deptno = e2.deptno)

select * from HumanResources.Employees e1 where sal > (select avg(sal) from HumanResources.Employees e2 group by deptno having e1.deptno = e2.deptno)

select * from HumanResources.Employees e1 where sal > all (select avg(sal) from HumanResources.Employees e2 group by deptno)