/* SQL EXTRAS */
select * from owners;
select * from pets;
select * from owners order by dateOfBirth;
select * from owners order by dateOfBirth desc;
select * from owners order by age desc limit 1;
insert into pets (race, dateOfBirth, ownerid) values ('dog german', '2015-07-06', '6'),('pisica norvegiana', '2016-09-09','6');
select o.ownerid, firstName, lastName, count(petid)
from owners o inner join pets p on o.ownerid = p.ownerid
group by o.ownerid, firstName, lastName;
select o.ownerid, firstName, lastName, count(petid)
from owners o inner join pets p on o.ownerid = p.ownerid
group by o.ownerid, firstName, lastName
having count(petid)>1;
select * from owners o inner join pets p on o.ownerid = p.ownerid;
select o.ownerid, firstName, lastName, race, o.dateOfBirth from owners o inner join pets p on o.ownerid = p.ownerid;
select o.ownerid, firstName, lastName, race, o.dateOfBirth ownerBirth, p.dateOfBirth petBirth from owners o inner join pets p on o.ownerid = p.ownerid;