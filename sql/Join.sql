
select * from employees e join departments d
on e.EMPLOYEE_ID =  d.DEPARTMENT_ID;

/*Write a query to find the name (first_name, last name), department ID and department name of all
the employees*/

select  e.FIRST_NAME,e.LAST_NAME,d.DEPARTMENT_ID,d.DEPARTMENT_NAME from employees e join departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

/*Write a query to find the addresses (location_id, street_address, city, state_province,
country_name) of all the departments*/

select l.LOCATION_ID,l.STREET_ADDRESS,l.CITY,l.STATE_PROVINCE,c.COUNTRY_NAME from departments d join locations l 
on d.LOCATION_ID=l.LOCATION_ID  join countries c 
on c.COUNTRY_ID = l.COUNTRY_ID;

/*Write a query to find the name (first_name, last_name), job, department ID and name of the
employees who works in London*/

SELECT e.first_name, e.last_name,department_id, d.department_name FROM employees e JOIN departments d 
ON e.department_id = d.department_id;

/*Write a query to find the employee id, name (last_name) along with their manager_id and name
(last_name)*/

select * from employees e1 join employees e2
on e1.MANAGER_ID=e2.EMPLOYEE_ID;

/*Write a query to display the department name, manager name, and city*/

select d.DEPARTMENT_NAME,d.MANAGER_ID,l.CITY from departments d JOIN  employees e 
ON d.manager_id = e.employee_id JOIN  locations l
 ON d.location_id = l.location_id;
 
 
