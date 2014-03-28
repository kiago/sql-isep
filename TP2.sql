/*1. List employees having a salary greater than all employees of department 20 */
/* avec view */
drop view MaxSalaryDept20;

CREATE VIEW MaxSalaryDept20
AS SELECT MAX(SAL) "s"
FROM EMP
WHERE DEPTNO='20';

Select E.* FROM EMP E WHERE E.SAL>=(SELECT * FROM MaxSalaryDept20);
/* ////////// */
Select E.* FROM EMP E WHERE E.SAL>=(SELECT MAX(SAL) FROM EMP WHERE DEPTNO=20); /*is ok*/


/*   */

CREATE TABLE project(
name char(10) NOT NULL AND UNIQUE,
num varchar(30) NOT NULL AND UNIQUE,
startingDate date,
budget integer, check (budget > 0),
PRIMARY KEY (num)
);



/*   */


