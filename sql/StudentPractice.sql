create table Student_Details
(
id int ,
name varchar(15),
marks int(10),
city varchar(20),
salary varchar(2000)
);
select * from Student_Details;
insert into Student_Details(id,name,marks,city,salary)
values
(3,"Vikram",70,"Malthan",40000),
(4,"Kailas",80,"Wai",50000),
(5,"Priyanka",98,"Umbraj",60000);

select * from Student_Details;
commit;
update Student_Details set marks =100 where id=2;
rollback;

select* from Student_Details 
order by salary desc
limit 3;

select sum(marks) as min, min(salary) as min,max(Salary)as max from Student_Details ;

delete from Student_Details where  id=2;

