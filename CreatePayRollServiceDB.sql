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
insert into EmployeePayRoll (Salary ,Name,StartDate,Address) values(47523,'Rakesh','2021-02-02','mumbai');
insert into EmployeePayRoll (Salary ,Name,StartDate,Address) values(47513,'Raj','2021-02-02','mumbai');
insert into EmployeePayRoll (Salary ,Name,StartDate,Address) values(47983,'Ravinder','2021-03-02','mumbai');
----------------Uc-04 Reading table data-----------
select * from EmployeePayRoll;
---------------Uc-05 Reading employee data-----------
select * from EmployeePayRoll where Id=3
select * from EmployeePayRoll where StartDate between CAST('2021-01-01' AS DATE) AND GETDATE() ;
-------------Uc-06 add column to employee data--------
alter table EmployeePayRoll add Gender char(1);
update EmployeePayRoll set Gender='M';
insert into EmployeePayRoll values('kavitha','hyd',43535,'2017-07-01','F'),('ramya','hyd',43488,'2022-08-20','F');
--------UC 7 Find sum ,average, min, max and number of gender-----
select sum(salary) from EmployeePayRoll 
select sum(salary) as Totalsalary from EmployeePayRoll 
select sum(salary) from EmployeePayRoll group by Gender;
select sum(salary) as Totalsalary,Gender from EmployeePayRoll group by Gender;
select max(salary) as Totalsalary,Gender from EmployeePayRoll group by Gender;
select * from EmployeePayRoll where salary=(select Max(salary) as totalsalary from employeepayroll where gender='F' )
select * from EmployeePayRoll where salary=(select Max(salary) as totalsalary from employeepayroll where gender='M' )
select * from EmployeePayRoll where salary in (select Max(salary) as totalsalary from employeepayroll group by gender)
select avg(salary) from EmployeePayRoll  group by gender
select avg(salary) as Totalsalary,Gender from EmployeePayRoll group by Gender;
--------UC 8-------------
alter table EmployeePayRoll add MobileNo bigint;
alter table EmployeePayRoll  drop column Department ;
alter table EmployeePayRoll  ADD Department varchar(255) ;
alter table EmployeePayRoll drop column Address;
alter table EmployeePayRoll add Address varchar(255) default 'Mumbai' with values;
update EmployeePayRoll set MobileNo='987654321';
update EmployeePayRoll set Department='IT';
select * from EmployeePayRoll