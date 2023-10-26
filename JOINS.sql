/*JOINS*/
/* select * from owners cross join pets on owners.ownerid = pets.ownerid */
select * from owners;
select * from pets;
select * from owners cross join pets;
select * from owners inner join pets on owners.ownerid = pets.ownerid;
select * from owners left join pets on owners.ownerid = pets.ownerid;
select * from owners left join pets on owners.ownerid = pets.ownerid where pets.ownerid is null;
select * from owners left join pets on owners.ownerid = pets.ownerid where pets.ownerid is not null; /*rezultat identic cu inner join*/
select * from pets right join owners on owners.ownerid = pets.ownerid; /*rezultat identic cu inner join*/