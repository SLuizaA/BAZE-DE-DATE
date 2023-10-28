/* Exercitii DQL */

/* Select everythinhg from table: employees */
select * from employees;

/* Select only firstName and lastName from table: employees */
select firstName, lastName from employees;

/* Select all employees with lastName Johnson */
select * from employees where lastName = 'Johnson';
/* Select all employees with lastName starts with J */
select * from employees where lastName like 'J%';

/* Select all employees whose lastName contains so */
select * from employees where lastName like '%so%';

/* Select all employees born after 1980 */
select * from employees where year(dateOfBirth) >1980;

/* Select all employees born after 1980 and whose firstName is John*/
select * from employees where year(dateOfBirth) >1980 and firstName = 'John';

/* Select all employees born after 1980 or whose firstName is John*/
select * from employees where year(dateOfBirth) >1980 or firstName = 'John';

/* Select all employees whose lastName is not James*/
select * from employees where lastName != 'James';

/* Select the maximum salary */
select max(salary) from employees;

/* Select the minium salary */
select min(salary) from employees;

/* Select the average salary */
select avg(salary) from employees;