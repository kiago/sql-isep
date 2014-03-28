DROP VIEW SALES_STAFF;

CREATE VIEW sales_staff AS SELECT empno, ename, deptno FROM emp WHERE deptno = 10
WITH CHECK OPTION CONSTRAINT sales_staff_cnst;

INSERT INTO sales_staff VALUES (7584, 'OSTER', 10);