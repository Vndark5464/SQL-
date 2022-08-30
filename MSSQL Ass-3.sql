create table subscriber(
PhoneNumber int primary key identity(1,1),
Types varchar not null unique,
RegistrationDate date default GETDATE()
);
create table customer(
CitizenID int primary key identity(1,1),
Name varchar(255) not null unique,
Address nvarchar(255) not null unique,
PhoneNumberName int not null foreign key references subscriber(PhoneNumber)
);
