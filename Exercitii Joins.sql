/* Exercitii Joins */
create database Joins;
create table smoke_test (
id int,
fname varchar(100),
steps varchar(300)
);

create table regression_test(
id int,
fname varchar(100),
steps varchar(300)
);

insert into smoke_test(id, fname, steps) values (1, 'tc1', '3 steps'),(2, 'tc2', '2 steps');
select * from smoke_test;

insert into regression_test(id, fname, steps) values(1, 'tc1', '3 steps'),(3,'tc3','4 steps');
select * from smoke_test;

select * from smoke_test join regression_test;
select * from smoke_test inner join regression_test on smoke_test.fname = regression_test.fname;
select * from smoke_test left join regression_test on smoke_test.fname = regression_test.fname;
select * from smoke_test right join regression_test on smoke_test.fname = regression_test.fname;


