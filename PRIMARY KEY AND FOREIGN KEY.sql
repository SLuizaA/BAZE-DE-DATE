/* PRIMARY KEY AND FOREIGN KEY */
alter table owners add column ownerid int primary key auto_increment;
alter table owners modify column ownerid int auto_increment first;
update owners set City = 'Bucuresti' where firstName = 'M';
update owners set City = 'Constanta' where firstName = 'P';
update owners set City = 'Pipera' where firstName = 'A';
insert into owners(firstname, lastname, dateOfBirth, age) values ('P', 'Alex', '1823-04-17', '95');
desc owners;
select * from owners;

create table pets (
petid int not null auto_increment,
race varchar(45) not null,
dateOfBirth date not null,
ownerid int not null,
primary key (petid),
constraint fk_pets_owners foreign key (ownerid) references owners(ownerid)
);
select * from pets;
insert into pets (race, dateOfBirth, ownerid)
values ('european', '2020-02-5', '5'),('american', '2021-04-23', '2');

