create table Pradeep_B(emp_id int,emp_name varchar(10),dept_id int,salary int,man_id int)


insert into Pradeep_B values ('1','emp1','100','10000','4');
insert into Pradeep_B values ('2','emp2','100','15000','5');
insert into Pradeep_B values ('3','emp3','100','10000','4');
insert into Pradeep_B values ('4','emp4','100','5000','2');
insert into Pradeep_B values ('5','emp5','200','12000','6');
insert into Pradeep_B values ('6','emp6','200','12000','2');
insert into Pradeep_B values ('7','emp7','200','9000','2');
insert into Pradeep_B values ('8','emp8','200','5000','2');


SELECT * FROM PRADEEP_B

--manager salary < employee salary


SELECT E.EMP_NAME AS EMPLOYEE_NAME,
       E.SALARY AS EMPLOYEE_SALARY,
       M.EMP_NAME AS MANAGER_NAME,
       M.SALARY AS MANAGER_SALARY
FROM PRADEEP_B E
JOIN PRADEEP_B M
ON E.MAN_ID=M.EMP_ID
WHERE M.SALARY < E.SALARY