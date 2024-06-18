1.
select name from students;

2.
select * from students where age>30;

3.
select name from students where age=30 and gender='F';

4.
select points from students where name='Alex';

5.
insert into students values(7, 'Samay', 21, 'M', 500);

6.
update students set points=301 where name='Basma';

7.
update students set points=199 where name='Alex';

8.
create table graduates(
  ID integer primary key autoincrement,
  Name text not null unique,
  Age integer,
  Gender text,
  Points integer,
  Graduation text
);

9.
insert into graduates(name, age, gender, points) select name, age, gender, points from students where name='Layal';
update graduates set graduation='08/09/2019' where name='Layal';
delete from students where name='Layal';

10.
select employees.name, employees.company, companies.date from employees inner join companies ON employees.company=companies.name;
select employees.name from employees inner join companies ON employees.company=companies.name where companies.date<'2000';
select companies.name from employees inner join companies on employees.company=companies.name where employees.role='Graphic Designer';

11.
select name from students where points=(select max(points) from students);
select avg(points) from students;
select count(name) from students where points=500;
select name from students where name glob '*s*' OR name glob '*S*';
select name from students order by points desc;
