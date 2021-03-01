DROP TABLE IF EXISTS Address;
DROP TABLE IF EXISTS ContactInfo;
DROP TABLE IF EXISTS Contact;


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

insert into Contact (FirstName, LastName, DOB, Gender, Title) values ('claudio', 'desalvo','1976-10-05','M','Manager'); 
insert into ContactInfo (ContactId, Type, value, preferred) values (1, 'CELL','12345667', 1); 
insert into address (ContactId, Type, Number,Street,Unit,City,State,ZipCode) values (1, 'HOME','1212','Belgrano','PB C','CABA','Buenos Aires','1212');
