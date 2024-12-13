create database QuanLyBanHang;
use QuanLyBanHang;

-- creater table Customer
create table Customer (
cID int not null auto_increment primary key,
cName varchar(100) not null,
cAge int
);

-- create table Order
create table Orders (
oID int not null auto_increment primary key,
cID int,
foreign key (cID) references Customer(cID),
oDate date,
oTotalPrice double
);

-- create table Product
create table Product (
pID int not null primary key auto_increment,
pName varchar(50),
pPrice double
);

-- create table OrderDetail
create table OrderDetail (
oID int not null,
pID int not null,
odQTY int,
foreign key (oID) references Orders (oID),
foreign key (pID) references Product (pID)
);