SET SQL_SAFE_UPDATES = 0; /*for updating without needing to mention the primary key*/

/*table inserts*/
insert into students values('oscarpobletes',md5('12345'),'Oscar Poblete Saenz','Universidad Anahuac',DEFAULT); /*md5 encrypts psswd*/
insert into courses values('oscarpobletes','Biology',1,1,1,10,0,0);

/*update*/
update courses set period=1,evaluations=2,d_evaluations=2,grade=10,pending=0,needed=0 where c_id='Biology' and username_fk='oscarpobletes';

/*deletes*/
delete from students where username='julietarojas'; /*for admin*/
delete from courses where c_id='Ethics' and username_fk='oscarpobletes'; /*for users*/