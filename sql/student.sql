create database bankmanagementsystem;

use  bankmanagementsystem;

create table signup(formno varchar(20),name varchar(20),father_name varchar(20),mobile varchar(10),dob varchar(20),gender varchar(20),email varchar(30),marital_status varchar(20),address varchar(40),city varchar(20),state varchar(20),pincode varchar(20));
create table signuptwo(formno varchar(20),religion varchar(20),category varchar(20),income varchar(20),education varchar(20),occupation varchar(20),pan varchar(20),aadhar varchar(20), seniorcitizen varchar(20),existingaccount varchar(20));
create table signupthree(formno varchar(20),accountType varchar(40),cardnumber varchar(40),pin varchar(40),facility varchar(200));
create table login(formno varchar(20),cardnumber varchar(20),pin varchar(20));

select * from login;
drop table signupthree;
create table bank(pin varchar(10),date varchar(50),type varchar(50),amount varchar(20));

SELECT "mode" FROM bank; 
