select count(*) from employees where DEPARTMENT_ID=
(select DEPARTMENT_ID from departments where LOCATION_ID=
(SELECT location_id from locations where city ='Toyko')
);

select count(*) from employees where DEPARTMENT_ID=
(select DEPARTMENT_ID from departments where DEPARTMENT_NAME='Administration');

select * from employees where SALARY > (select salary from employees where LAST_NAME ='Bull');

select * from employees  where DEPARTMENT_ID =(select DEPARTMENT_ID from departments where DEPARTMENT_NAME='IT');

select * from employees where DEPARTMENT_ID in (select DEPARTMENT_ID from departments where DEPARTMENT_NAME  like 'IT%');

/*select * from employees where MANAGER_ID >0 and DEPARTMENT_ID in(all-USA-Based-DeptID)
select department_ID from departments where LOCATION_ID in(all-USA-Based-LoactionId)
select location_ID from locations where countryIS= 'US';
*/

select * from employees where MANAGER_ID > 0 and DEPARTMENT_ID in
(select DEPARTMENT_ID from departments where LOCATION_ID in
(select LOCATION_ID from locations where COUNTRY_ID ='US') );

/* 
select * from employees where EMPLOYEE_ID in ( managerIdList);
select   distinct MANAGER_ID from employees //list
*/
select * from employees where EMPLOYEE_ID in ( select   distinct MANAGER_ID from employees);

/*select * from employees where SALARY > avgSalary; */

select * from employees where SALARY > (select avg(SALARY) from employees);

select * from employees e where 
SALARY =( select min_salary from jobs j
where e.JOB_ID = j.JOB_ID
);

/*Write a query to find the name (first_name, last_name) and salary of the employees who earn a
salary that is higher than the salary of all the Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the
results of the salary of the lowest to highest.*/

SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT MAX(salary)FROM employees    WHERE job_id = 'SH_CLERK')
ORDER BY salary ASC;

/*Write a query to display the employee ID, first name, last name, and department names of all
employees*/

select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,
(select DEPARTMENT_ID from departments d
where d.DEPARTMENT_ID=e.EMPLOYEE_ID)
 from employees e;
 
 /*Write a query to display the employee ID, first name, last name, salary of all employees whose
salary is above average for their departments*/

select * from employees e1
where SALARY >
(select avg(SALARY) from employees e2
where e2.DEPARTMENT_ID=e1.DEPARTMENT_ID
);

/*Write a query to fetch even numbered records from employees table*/

select * from employees where mod(employee_id,2)=0;
select * from employees where EMPLOYEE_ID%2=0;

/*fist 5 Max salary*/

select salary from employees order by salary desc
limit 4,1;

/*Write a query to find the 4th minimum salary in the employees table*/

SELECT * FROM employees ORDER BY SALARY
LIMIT 1 OFFSET 3;

/*Write a query to select last 10 records from a table*/

SELECT * FROM your_table ORDER BY id DESC
LIMIT 10;

/*Write a query to list the department ID and name of all the departments where no employee is
working*/

SELECT department_id, department_name FROM departments
WHERE department_id NOT IN (SELECT DISTINCT department_id FROM employees WHERE department_id IS NOT NULL);

/*Write a query to get 3 maximum salaries*/

SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

/*Write a query to get 3 minimum salaries*/

SELECT DISTINCT salary
FROM employees
ORDER BY salary asc
LIMIT 3;

