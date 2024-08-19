create table Pradeep(emp_name varchar(10),dept_no int,salary int)



insert into Pradeep values('emp1','10','10000');
insert into Pradeep values('emp2','20','7000');
insert into Pradeep values('emp3','10','12000');
insert into Pradeep values('emp4','30','10000');
insert into Pradeep values('emp5','20','5000');
insert into Pradeep values('emp6','30','8000');
insert into Pradeep values('emp7','10','12000');


select * from Pradeep


--Find second highest salary in each department

WITH CTE AS
(
SELECT *,
      DENSE_RANK()OVER(PARTITION BY DEPT_NO ORDER BY SALARY DESC)AS DRNK
FROM PRADEEP
)
SELECT EMP_NAME,SALARY
FROM CTE WHERE DRNK=2