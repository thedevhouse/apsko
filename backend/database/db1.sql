create table Users (
UID int primary key,
Username varchar(255),
Password varchar(255),
Email varchar(255),
DOB varchar(30),
Admin bool
);
create table Servers (
SID int Primary key,
ServerName varchar(255),
Private bool,
Inactive bool
);
create table Subscriptions (
SID int,
UID int,
constraint foreign key (SID) references Servers(SID),
constraint foreign key (UID) references Users(UID)
);
create table ServerMembers (
UID int,
SID int,
Role int,
Blocked int,
constraint Foreign Key (UID) references Users(UID),
constraint Foreign key (SID) references Servers(SID)
);
create table Threads (
TID int primary key,
SID int,
UID int,
Title varchar(255),
Content text,
Time varchar(30),
constraint foreign key (SID) references Servers(SID),
constraint foreign key (UID) references Users(UID)
);
create table Comments (
CID int primary key,
TID int,
UID int,
Content text,
Anonymous bool,
Time varchar(30),
constraint foreign key (TID) references Threads(TID),
constraint foreign key (UID) references Users(UID)
);
create table FriendRequests (
FromF int,
ToF int,
constraint foreign key (ToF) references Users(UID),
constraint foreign key (FromF) references Users(UID)
);
create table ServerRequests (
SID int,
UID int,
constraint foreign key (SID) references Servers(SID),
constraint foreign key (UID) references Users(UID)
);
create table Friends (
F1 int,
F2 int,
FID int primary key,
constraint foreign key (F1) references Users(UID),
constraint foreign key (F2) references Users(UID)
);
create table Messages (
MID int primary key,
FID int,
Content text,
Time varchar(30),
constraint foreign key (FID) references Friends(FID)
);
