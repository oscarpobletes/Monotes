DROP SCHEMA IF EXISTS monotes;
CREATE SCHEMA monotes;
USE monotes;

CREATE TABLE students(
username varchar(15),
psswd varchar(35),
name varchar(30),
school varchar(50),
created_on timestamp default current_timestamp,
primary key(username)
);

CREATE TABLE courses(
username_fk varchar (15), 
c_id varchar (50),
period int check(period>0),
evaluations int check(evaluations>0),
d_evaluations int check(d_evaluations>=0),
grade decimal(4,2) check(grade>=0 and grade<=10),
pending decimal(4,2) check(pending>=0 and pending<=100),
needed decimal(4,2) check(needed>=0 and needed<=10),
primary key(c_id),
foreign key(username_fk) references students(username)
on delete cascade
);

/*tables content*/
select * from students;
select * from courses;

select c_id, period, evaluations, d_evaluations, grade, pending, needed from courses where username_fk='oscarpobletes' order by period asc;
select c_id from courses where username_fk='oscarpobletes';
select period from courses where username_fk='oscarpobletes';
SELECT avg(grade) FROM courses WHERE username_fk='oscarpobletes';

/*table drops*/
drop table students;
drop table courses;
/*tables information*/
show table STATUS like 'students';
show table status like 'courses';

