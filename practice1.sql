Find the 3rd highest salary for the employee table ?
table name:- employee
empid empname salary
-==--=-=-=-=-=-=-=-=
100  Rob      10000
101  sam      20000
102  Donald   30000
103  Michael  40000

select * from (
SELECT salary,dense_rank() OVER (PARTITION By Empid ORDER BY SALARY DESC)
from employee)  AS RNK
where RNK =3