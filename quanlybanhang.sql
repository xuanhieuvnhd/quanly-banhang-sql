create database Quanlybanhang;
use Quanlybanhang;

create table customer(
  cID int auto_increment primary key ,
  cName varchar(50),
  cAge int
);

create table orders(
    oID int auto_increment primary key ,
    cID int,
    foreign key (cID) references customer(cID) ,
    oDate datetime,
    oTotalPrice double
);

create table product(
    pID int auto_increment primary key ,
    pName varchar(30),
    pPrice double

);
create table orderDetail(
    oID int,
    pID int,
    odQTY int,
    foreign key (oID) references orders(oID),
    foreign key (pID) references product(pID)
);