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

