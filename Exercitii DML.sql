/* Exercitii DML */
SET SQL_SAFE_UPDATES = 0;
/* Inser into table: employees a new entry:
- employeed - 1
-firstName John
-lastName Johnson
-dateOfBirth 1975-01-01
-phoneNumber 0-800-800-314
-email john@johnson.com
-salary 1000 */

insert into employees (employeed, firstName, lastName, dateOfBirth, phoneNumber, email, salary)
values ('1', 'John', 'Johnson', '1975-01-01', '0-800-800-314', 'john@johnson.com', '1000');
select * from employees;

/* Update dateOfBitrth of John Johnson to 1980-01-01 */
update employees set dateOfBirth = '1980-01-01';
select * from employees;

/* Delete everything from table: employees */
truncate table employees;
select * from employees;

/* Add two more entries in employees:
- John, Johnson, 1975-01-01, 0-800-800-888, john@johnson.com, 1000
-James, Jameson, 1985-02-02, 0-800-800-999, james@jameson.com, 2000 */ 
insert into employees (employeed, firstName, lastName, dateOfBirth, phoneNumber, email, salary)
values (1, 'John', 'Johnson', '1975-01-01', '0-800-800-314', 'john@johnson.com', 1000), (2,'James', 'Jameson', '1985-02-02', '0-800-800-999', 'james@jameson.com', 2000);
select * from employees;