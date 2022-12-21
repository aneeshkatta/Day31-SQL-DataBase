-------UC-01-Creating database---------
create database Payroll_Service;
<<<<<<< HEAD
use model
---------UC-02-Creating table-----------
create table EmployeePayRoll
(
	Id int  identity(1,1)  primary key,
    Name varchar(255),
    Address varchar(255),
    Salary float,
	StartDate date
);
=======
use Payroll_Service;
>>>>>>> uc1
