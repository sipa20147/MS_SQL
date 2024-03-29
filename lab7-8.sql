create database POSTAVKA;
use POSTAVKA;

create table S
(S_ID varchar(6) PRIMARY KEY,
 S_NAME varchar(20),
 RAITE int,
 CITY varchar(10));
                                                                                                                                                                                                                                                                
insert into S values('S1','Cмит',20,'Лондон');
insert into S values('S2','Джонс',10,'Париж');
insert into S values('S3','Блейк',30,'Париж');
insert into S values('S4','Кларк',20,'Лондон');
insert into S values('S5','Адамс',30,'Афины');

create table P
(P_ID varchar(6) PRIMARY KEY,
 P_NAME varchar(20),
 COLOR varchar(20),
 WEIGHT int,
 CITY varchar(10));
 

----SPORTSMEN------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into P values('P1','Гайка','Красный',12,'Лондон');
insert into P values('P2','Болт','Зелёный',17,'Париж');
insert into P values('P3','Винт','Голубой',17,'Рим');
insert into P values('P4','Винт','Красный',14,'Лондон');
insert into P values('P5','Кулачок','Голубой',12,'Париж');
insert into P values('P6','Блюм','Красный',19,'Лондон');
go

create table J
(J_ID varchar(6) PRIMARY KEY,
 J_NAME varchar(20),
 CITY varchar(10));
                                                                                                                                                                                                                                                                 
----BOOK_READING------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into J values('J1','Жоский диск','Париж');
insert into J values('J2','Перфоратор','Рим');
insert into J values('J3','Считыватель','Афины');
insert into J values('J4','Принтер','Афины');
insert into J values('J5','Флопи диск','Лондон');
insert into J values('J6','Терминал','Осло');
insert into J values('J7','Лента','Лондон');
go

create table SPJ
(S_ID varchar(6) references S(S_ID),
 P_NAME varchar(6) references P(P_ID),
 J_ID varchar(6) references J(J_ID),
 COUNT int);

insert into SPJ values('S1','P1','J1',200);
insert into SPJ values('S1','P1','J4',700);
insert into SPJ values('S2','P3','J1',400);
insert into SPJ values('S2','P3','J2',200);
insert into SPJ values('S2','P3','J3',200);
insert into SPJ values('S2','P3','J4',500);
insert into SPJ values('S2','P3','J5',600);
insert into SPJ values('S2','P3','J6',400);
insert into SPJ values('S2','P3','J7',800);
insert into SPJ values('S2','P5','J2',100);
insert into SPJ values('S3','P3','J1',200);
insert into SPJ values('S3','P4','J2',500);
insert into SPJ values('S4','P6','J3',300);
insert into SPJ values('S4','P6','J7',300);
insert into SPJ values('S5','P2','J2',200);
insert into SPJ values('S5','P2','J4',100);
insert into SPJ values('S5','P5','J5',500);
insert into SPJ values('S5','P5','J7',100);
insert into SPJ values('S5','P6','J2',200);
insert into SPJ values('S5','P1','J4',100);
insert into SPJ values('S5','P3','J4',200);
insert into SPJ values('S5','P4','J4',800);
insert into SPJ values('S5','P5','J4',400);
insert into SPJ values('S5','P6','J4',500);

