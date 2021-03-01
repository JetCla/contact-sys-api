CREATE DATABASE contactDB;

Create table Contact (
    [Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    FirstName nvarchar(250)  null ,
    LastName nvarchar(250)  null ,
    DOB DATE  null,
    Gender char(1) null,
    Title nvarchar(255)  null,
);

create table ContactInfo (
    [Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    ContactId int not null FOREIGN KEY REFERENCES Contact (Id),
    [type] nvarchar(50)  null, 
    [value] nvarchar(255)  null,
    preferred bit not null default 0
);

create table [Address] (
    [Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    ContactId int not null FOREIGN KEY REFERENCES Contact (Id),
    [type] nvarchar(50)  null,
    [Number] nvarchar(50) null,
    Street nvarchar(255) null,
    Unit nvarchar(50) null,
    City nvarchar(255) null,
    [State] nvarchar(255) NULL,
    ZipCode nvarchar(50) null
);
