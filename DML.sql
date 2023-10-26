/* DATA MANIPULATION LANGUAGE*/
alter table owners add column dateOfBirth date;
/* instructiune de insert */

insert into owners (firstName, lastName, dateOfBirth)
values('Ame', 'M' , '2005-01-27');

insert into owners values('Deea', 'M', '1999-12-22');

insert into owners values('Ame', 'M' , '2005-01-27'),('Deea', 'M', '1999-12-22');
select * from owners;

/* instructiune de update*/
update owners set firstName = 'Deea';

select * from owners;

/*  stergerea tuturor inregistrarilor din coloana */
delete from owners;

select * from owners;

/* stergerea tuturor inregistrarilor*/
truncate table owners;
select * from owners;

/* 	Diferenta intre DELETE SI TRUNCATE
Delete are capacitatea de a numara inregistrarile pe care pe sterge, iar Truncate nu
Cu delete putem sa filtram si sa stergem doar anumite inregistrari, iar la Trunate nu
*/