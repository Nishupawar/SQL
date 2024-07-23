create table Dept(
did int not null auto_increment,
dept varchar(20),
primary key(did)
);

insert into Dept(did,dept)
values
(1,"CSE"),
(2,"Banking"),
(3,"Forest");

select * from Dept;