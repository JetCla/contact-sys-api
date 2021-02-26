CREATE DATABASE contactDB;

Create table Contact (
    [Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    FirstName nvarchar(250) not null ,
    LastName nvarchar(250) not null ,
    DOB DATE not null,
    Gender char(1) not null,
    Title nvarchar(255) not null,
);

create table ContactInfo (
    [Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    ContactId int not null FOREIGN KEY REFERENCES Contact (Id),
    [type] nvarchar(50) not null, 
    [value] nvarchar(255) not null,
    preferred bit not null default 0
);

create table [Address] (
    [Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    ContactId int not null FOREIGN KEY REFERENCES Contact (Id),
    [type] nvarchar(50) not null,
    [Number] nvarchar(50) null,
    Street nvarchar(255) null,
    Unit nvarchar(50) null,
    City nvarchar(255) null,
    [State] nvarchar(255) NULL,
    ZipCode nvarchar(50) null
);
