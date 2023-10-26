/*DDL DATA DEFINITION LANGUAGE*/

/* crearea unei tabele*/
CREATE TABLE owners (
    firstName VARCHAR(25) NOT NULL,
    lastName VARCHAR(25) NOT NULL
) ;

/* adaugarea unei coloane intr-o tabela*/
alter table owners
add COLUMN AGE INT;

/* stergerea unei coloane din tabela*/
alter table owners
drop age;

/* modificarea structurii unei coloane
modify poate sa modifice proprietatile unei coloane 
Daca in momentul in care executam instructiunea, nu speficica toate proprietatile pe care le-am specificat la creare, ele vor fi sterse   */
desc owners; /*arata structura unei coloane*/
alter table owners modify firstName char(25) not null; 
alter table owners modify lastName char(25) not null; 
desc owners;
/* schimbarea numelui unei coloane*/
alter table owners change lastName ownerLastName char(25) not null;

/* schimbarea numelui tabelei*/
alter table owners rename to petOwners;

/* stergerea unei tabele
Se va sterge tabela cu toate info din ea si nu se mai poate recupera 
*/
drop table petOwners;

CREATE TABLE owners (
    firstName VARCHAR(25) NOT NULL,
    lastName VARCHAR(25) NOT NULL
) ;
