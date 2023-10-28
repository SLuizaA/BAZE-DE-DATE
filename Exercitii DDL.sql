/* Exercitii DDL */

/* Create a new database: humanResources */
create database humanResources;

/* Create a new table: employees, with the following columns:
- employeed - integer
-firstName -vachar
-lastName - varchar 
dateOfBirth - date */
CREATE TABLE employees (
    employeed INT,
    firstName VARCHAR(100),
    lastName VARCHAR(100),
    dateOfBirth DATE,
    postalAdress VARCHAR(200)
);

/* Alter table: employees and add the following column:
-phoneNumber varchar
-email varchar
-salary integer */
Alter table employees add column phoneNumber varchar(100);
alter table employees add column email varchar(100);
alter table employees add column salary int;
desc employees;

/* Alter table: employess and remove the following column: 
-postalAdreess */
alter table employees drop postalAdress;

/*Create a new table: employeesAdress
- country varchar */ 
CREATE TABLE EmployeesAdress (
    country varchar(100)
);

/* Remove table employessAdress */
Drop table employeesadress;