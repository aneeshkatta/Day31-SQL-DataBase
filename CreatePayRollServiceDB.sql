---------UC-02-Creating table-----------
create table EmployeePayRoll
(
	Id int  identity(1,1)  primary key,
    Name varchar(255),
    Address varchar(255),
    Salary float,
	StartDate date
);
