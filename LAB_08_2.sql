use lab8

insert into S(dealer_id, last_name, raiting, city) values ('S1', '����', 20, '������');
insert into S(dealer_id, last_name, raiting, city) values ('S2', '�����', 10, '�����');
insert into S(dealer_id, last_name, raiting, city) values ('S3', '�����', 30, '�����');
insert into S(dealer_id, last_name, raiting, city) values ('S4', '�����', 20, '������');
insert into S(dealer_id, last_name, raiting, city) values ('S5', '�����', 30, '�����');

insert into P(detail_id, name, color, mass, city) values ('P1', '�����', '�������', 12, '������');
insert into P(detail_id, name, color, mass, city) values ('P2', '����', '�������', 17, '�����');
insert into P(detail_id, name, color, mass, city) values ('P3', '����', '�������', 17, '���');
insert into P(detail_id, name, color, mass, city) values ('P4', '����', '�������', 14, '������');
insert into P(detail_id, name, color, mass, city) values ('P5', '�������', '�������', 12, '�����');
insert into P(detail_id, name, color, mass, city) values ('P6', '����', '�������', 19, '������');

insert into J(product_id, name, city) values ('J1', '������� ����', '�����');
insert into J(product_id, name, city) values ('J2', '����������', '���');
insert into J(product_id, name, city) values ('J3', '�����������', '�����');
insert into J(product_id, name, city) values ('J4', '�������', '�����');
insert into J(product_id, name, city) values ('J5', '������-����', '������');
insert into J(product_id, name, city) values ('J6', '��������', '����');
insert into J(product_id, name, city) values ('J7', '�����', '������');

insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S1','P1','J1',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S1','P1','J4',700)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J1',400)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J2',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J3',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J4',500)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J5',600)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J6',400)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J7',800)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P5','J2',100)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S3','P3','J1',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S3','P4','J2',500)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S4','P6','J3',300)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S4','P6','J7',300)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P2','J2',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P2','J4',100)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P5','J5',500)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P5','J7',100)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P6','J2',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P1','J4',100)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P3','J4',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P4','J4',800)