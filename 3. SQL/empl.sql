create database EmployeeDB;
use EmployeeDB; 
create table Employees(
			   EmployeeID int primary key,
			   FirstName varchar(50),
			   LastName varchar(50),
			   Age int,
			   Salary decimal(10,2));
show tables;
desc Employees;
insert into Employees(EmployeeID,FirstName,LastName,Age,Salary) values(1,"Jahana","Shirin",22,3000),
                                                                      (2,"Mohd","Shalib",26,5000),
                                                                      (3,"Sandra","Manoj",24,4000),
                                                                      (4,"Jane","Smith",29,6000),
                                                                      (5,"Ann","Smith",34,2500);
																	
insert into Employees(EmployeeID,FirstName,LastName,Age,Salary) values(6,"Mohd","Huzair",25,1000),
                                                                      (7,"Izza","Jan",33,3500); 
select * from Employees;																
 select * from Employees where EmployeeID=4;
 select * from Employees where Salary > 4000;
 update Employees  set Salary=4500 where EmployeeID=1;
 update Employees set Age=29 where EmployeeID=5;
 update Employees set LastName="Manoj" where EmployeeID=4;
 delete from Employees where EmployeeID=6;
 delete from Employees where EmployeeID>0 and Salary < 3000;
 select AVG(Salary) as avg_Salary from Employees;
 select count(EmployeeID) as count_EmployeeID from Employees;
 select * from Employees order by Salary DESC limit 1;
 select * from Employees order by Age ASC limit 1;
 
 create table Departments(
                       DepartmentID int primary key,
                       DepartmentName varchar(50));

alter table Employees
add column DepartmentID int,

add constraint fk_Employee_Department
foreign key(DepartmentID) 
references Departments(DepartmentID);
