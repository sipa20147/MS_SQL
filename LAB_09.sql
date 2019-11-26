use lr9

alter table cpu alter column quantity decimal(5)
alter table hdd alter column quantity decimal(5)
alter table monitor alter column quantity decimal(5)

update cpu set quantity = 500 where Frequency > 1000
select * from CPU

select * from CPU where quantity is NULL

select * from CPU where quantity is not NULL

update cpu set quantity = 200 where Frequency < 1000
select * from CPU

alter table cpu add constraint quant check( quantity > 0);
alter table hdd add constraint quant_hdd check( quantity > 0);
alter table monitor add constraint quant_mon check( quantity > 0);

alter table computer add price decimal(10,2) constraint ch_price check(price > 300);

alter table computer nocheck constraint ch_price

update computer set price = 800 where model = 'I-1'
update computer set price = 1000 where model = 'I-2'
update computer set price = 1300 where model = 'I-3'
update computer set price = 1600 where model = 'I-4'
update computer set price = 1200 where model = 'D-3'
update computer set price = 1300 where model = 'D-4'
update computer set price = 800 where model = 'C-1'
update computer set price = 900 where model = 'C-2'
update computer set price = 1000 where model = 'C-3'
update computer set price = 1100 where model = 'C-4'

alter table computer check constraint ch_price

delete from Computer where price < 1000

alter table computer drop constraint ch_price
alter table computer add constraint ch_price_1 check(price >= 1000 and price <= 10000);