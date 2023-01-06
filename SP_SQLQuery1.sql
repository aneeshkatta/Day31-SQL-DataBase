Go
alter procedure spAddEmployeeDetails
(@Id int  identity(1,1)  primary key
@Name varchar(255),
@Salary float ,
@StartDate date,
@Gender char(1),
@MobileNo bigint,
@Department varchar(255),
@Address varchar(255),
@Basic_Pay float,
@Deductions float,
@Taxable_Pay float,
@Income_Tax float,
@Net_Pay float)
as
begin
Insert into EmployeePayRoll  
values ( @Name,@Salary,@StartDate,@Gender,@MobileNo,@Address,@Department,@Basic_Pay,@Deductions,@Taxable_Pay,@Income_Tax,@Net_Pay)
end
