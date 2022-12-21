--------UC-01-Creating database---------
create database Payroll_Service;
use Payroll_Service;
---------UC-02-Creating table-----------
create table EmployeePayRoll
(
	Id int  identity(1,1)  primary key,
    Name varchar(255),
    Address varchar(255),
    Salary float,
	StartDate date
);
-----------UC-03 payroll service database as part of CURD Operation - Use payroll_service database-----------
insert into EmployeePayRoll values('Ravi','hyd',45698.2,CAST('2021-01-01' as date));
insert into EmployeePayRoll (Salary ,Name,StartDate,Address) values(47523,'Raj','2021-02-02','mumbai');
select * from EmployeePayRoll;