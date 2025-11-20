create database MagicChoc

Go

use MagicChoc

go

create schema HR

go

create table HR.Departments

(

DeptID smallint not null,

DeptName nvarchar(64) not null,

constraint PK_Departments_DeptID primary key (DeptID)

);

go

create table HR.Employees

(

EmployeeID smallint not null,

FirstName nvarchar(32) not null,

LastName nvarchar(32) not null,

ManagerID smallint null,

IsContractor bit not null,

DeptID smallint not null

constraint PK_Employees_EmployeeID primary key (EmployeeID)

);

go

alter table HR.Employees add constraint

FK_Employees_Departments

foreign key (DeptID)

references HR.Departments(DeptID);

go

alter table HR.Employees add constraint

FK_Employees_ManagerID 

foreign key (ManagerID)

references HR.Employees(EmployeeID)

