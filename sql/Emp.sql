create table emp(
id int not null auto_increment,
name varchar(10),
dept varchar(10),
primary key (id),
foreign key(dept) references Dept(did) 
);


