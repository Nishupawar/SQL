select lower(first_name) from employees;

select FIRST_NAME, substr(first_name,1,3) ,length(first_name) ,substr(first_name,3) ,LAST_NAME,substr(last_name,1,3),substr(last_name,3) 
from employees;

select count(first_name) from employees
group by FIRST_NAME;

select * from employees order by LAST_NAME,FIRST_NAME ;

delete from employees
where DEPARTMENT_ID=90 ;

select count(*) from employees where SALARY>=10000;

select first_name,last_name ,salary from employees where SALARY>10000 or SALARY<15000;

select first_name as fn ,last_name as ln,DEPARTMENT_ID as id from employees where DEPARTMENT_ID = 30 or DEPARTMENT_ID= 100;

select * from employees where HIRE_DATE like '1987%';

select first_name,department_id,JOB_ID from employees where job_id not like 'fi_account';

select * from employees where SALARY in(2000,3000,4000,5000);

select * from employees where JOB_ID in('IT_PROG','SH_CLERK') and SALARY not in(4500,10000,20000);

select * from employees where FIRST_NAME like '______';

select * from employees where FIRST_NAME like '__a%';

select * from employees where FIRST_NAME like '%b%' and FIRST_NAME like '%a%';

select * from employees where FIRST_NAME regexp '^an';

select * from employees where FIRST_NAME regexp 'an$';

select FIRST_NAME from employees where FIRST_NAME regexp 'ac|na|ti|ja';

select * from employees where FIRST_NAME regexp '[xy]';

select * from employees where FIRST_NAME regexp '[hc]a';

select * from employees where FIRST_NAME regexp '[a-p]i';

select  first_name,last_name ,salary,salary * 0.15 as pf from employees;  

select * from employees where LAST_NAME in('BLACK','KING');

select JOB_ID,count(*) from employees
group by JOB_ID;

select manager_id ,min(salary) from employees
group by MANAGER_ID;

select DEPARTMENT_ID,sum(SALARY) from employees
group by DEPARTMENT_ID;

select JOB_ID,avg(SALARY) from employees
where JOB_ID!='IT_PROG'
group by JOB_ID;

select JOB_ID,avg(SALARY) from employees
group by JOB_ID
having JOB_ID<>'IT_PROG';

select DEPARTMENT_ID,avg(SALARY),count(*) from employees
group by DEPARTMENT_ID
having count(*)>10;

