/*DATA QUERY LANGUAGE*/
truncate table owners;

select * from owners;
alter table owners add COLUMN AGE INT;
alter table owners add column City varchar(24);
update owners set City = 'Bucuresti' where firstName = 'M';
select lastName, firstName from owners;
insert into owners (lastName, firstName, dateOfBirth, age) values ('Anto', 'P', '1975-07-27','54'),('Cosmin', 'M', '1999-12-20', '24'),('Ame', 'M' , '2005-01-27', '18'),('Deea', 'M', '1999-12-22', '24'),('Roberto', 'A', '1998-07-12', 25);
select * from owners;
/*filtrare*/
select * from owners where age = 24;
select * from owners where age < 20;
select * from owners where age >= 54;
select * from owners where lastName in ('Cosmin', 'Ame');
select * from owners where lastName not in ('Cosmin', 'Ame');
select * from owners where City is Null;
select * from owners where City is not Null;
select * from owners where age != 24;
select * from owners where age between 23 and 53;
select * from owners where lastName like 'A%';
select * from owners where lastName like '%a';
select * from owners where lastName like '%m%';
select * from owners where dateOfBirth like '1999%';
select * from owners where dateOfBirth like '19%';
select * from owners where dateOfBirth like '%22';
select * from owners where dateOfBirth like '%-12-%';
select * from owners where dateOfBirth like '%12%';
select * from owners where lastName like 'A%' and dateOfBirth like '20%';
select * from owners where lastName like 'A%' or dateOfBirth like '20%';
select * from owners where (lastName like '%A%' or dateOfBirth like '199%') and city like 'Bucuresti';
select * from owners where lastName like 'A%' or dateOfBirth like '199%' and city like 'Bucuresti';
select sum(age) from owners;
select avg(age) from owners;
select firstName, lastName, min(age) from owners group by firstName, lastName;
select count(*) from owners;
