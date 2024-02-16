show databases;
create database sampleDB;
drop database sampleDB;
use sampleDB;
create table customers(
id int not null,
customer_name varchar(20) not null,
age int not null,
address char (25),
salary decimal(18,2),
primary key(id));
show tables;
desc customers;
insert into customers(id,customer_name,age,address,salary) values
(1,"sandhra",24,"perinthalmanna",20000),
(2,"Gadha",22,"malappuram",30000),
(3,"jahana",23,"mannarmala",40000),
(4,"anu",29,"kozhikode",10000);
SELECT * FROM customers;
select id name , salary from customers;
select * from customers where age > 25;
select id name,salary from customers where salary > 20000 and age < 25;
select * from customers where age between 20 and 25;
insert into customers(id,customer_name,age,address,salary) values
(5,"sandhra",24,"perinthalmanna",20000),
(6,"Gadha",22,"malappuram",30000),
(7,"jahana",23,"mannarmala",40000),
(8,"anu",29,"kozhikode",10000);
update customers set address='pattambi' where id=8;
delete from customers where id=8;
select*from customers;
truncate table customers;
show tables;
drop table customers;
show tables;
create table customers(id int not null,
customer_name varchar(20) not null,
age int not null,
address char (25),
salary decimal(18,2),
primary key(id));
show tables;
desc customers;
insert into customers(id,customer_name,age,address,salary) values
(1,"sandhra",24,"perinthalmanna",20000),
(2,"Gadha",22,"malappuram",30000),
(3,"jahana",23,"mannarmala",40000),
(4,"anu",29,"kozhikode",10000);
SELECT * FROM customers;
select id name , salary from customers;
select * from customers where age > 25;
select id name,salary from customers where salary > 20000 and age < 25;
select * from customers where age between 20 and 25;
insert into customers(id,customer_name,age,address,salary) values
(5,"sandhra",24,"perinthalmanna",20000),
(6,"Gadha",22,"malappuram",30000),
(7,"jahana",23,"mannarmala",40000),
(8,"anu",29,"kozhikode",10000);
desc customers;
select * from customers;
alter table customers add gender char(1);
select distinct salary, age from customers order by salary;
select * from customers where customer_name in ('sandhra','gadha');
update customers set gender='f' where id in (1,2,3,4,5,6,7,8);
select * from customers;
select*from customers where salary like '200%';
select * from customers order by customer_name asc;
select age,avg(salary) as avg_salary from customers group by age;
select count(id) as count_id from customers;
select customer_name,sum(salary) as total_salary from customers group by customer_name having sum(salary)<4540;
create index sample_index on customers(customer_name);
select * from customers;
drop index sample_index on customers;