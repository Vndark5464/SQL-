create table Department(
DepartId int primary key ,
DepartName varchar(50) not null,
Description varchar(100) not null);

create table Employee(
EmpCode char(6) primary key,
FirstName varchar(30) not null,
Lastname varchar(30) not null,
Birthday smalldatetime not null,
Gender bit default '1',
Address varchar(100),
DepartId int foreign key references Department(DepartId),
Salary Money);

insert into Department(DepartId,DepartName,Description) values (N'001',N'Phòng giám đốc',N'Phòng làm việc của giám đốc công ty');
insert into Department(DepartId,DepartName,Description) values (N'002',N'Phòng nhân viên',N'Phòng làm việc của nhân viên');
insert into Department(DepartId,DepartName,Description) values (N'003',N'Phòng nhân sự',N'Phòng làm việc của bộ nhân sự');

insert into Employee(EmpCode,FirstName,Lastname,Birthday,Gender,Address,DepartId,Salary) values (N'NV001',N'Tuấn',N'Nguyễn Văn',N'03/01/1992',N'Nam',N'Nam Từ Liêm ,Hà Nội',N'P001',N'14000');
insert into Employee(EmpCode,FirstName,Lastname,Birthday,Gender,Address,DepartId,Salary) values (N'NV002',N'Tú',N'Nguyễn hữu',N'04/03/1994',N'Nam',N'Nam Từ Liêm ,Hà Nội',N'P002',N'6000');
insert into Employee(EmpCode,FirstName,Lastname,Birthday,Gender,Address,DepartId,Salary) values (N'NV003',N'Tài',N'Hồ Tấn',N'01/05/1991',N'Nam',N'Bắc Từ Liêm ,Hà Nội',N'P003',N'4000');
insert into Employee(EmpCode,FirstName,Lastname,Birthday,Gender,Address,DepartId,Salary) values (N'NV001',N'Tùng',N'Trịnh Quang',N'12/06/1996',N'Nam',N'Cầu Giấy ,Hà Nội',N'P003',N'4200');

update Employee Set Salary = Salary * 1.1;

alter table Employee add constraint check_Salary check ( Salary > 0);

create trigger tg_chkBirthday
on Employee 
after update
as
begin
if (select Age from inserted) < 22
begin
  print 'Tuoi khong du 22';
  rollback transaction;
end

 end




