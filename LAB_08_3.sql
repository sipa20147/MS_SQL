use lab_08_2

select detail_id, sum(quantity) quantity from SPJ group by detail_id

select distinct(detail_id) from spj where dealer_id = 'S1'

select dealer_id, last_name from s where dealer_id in (select dealer_id from spj where product_id in (select product_id from spj where detail_id = 'P1' and quantity > (select avg(quantity) from spj group by detail_id having detail_id = 'P1')))

select sum(quantity) quantity from spj group by detail_id, dealer_id having detail_id = 'P1' and dealer_id = 'S1'

select detail_id from spj where dealer_id in (select dealer_id from s where city = 'Лондон') and product_id in (select product_id from j where city = 'Лондон')

select dealer_id, last_name from s where dealer_id in (select dealer_id from spj group by dealer_id having count(distinct(detail_id)) = 1)

select count(product_id) product_count from spj where dealer_id = 'S1'

select distinct(product_id) from spj where dealer_id in (select dealer_id where detail_id in (select detail_id from p where color = 'Красный'))

select * from spj where quantity >= 300 and quantity <= 750

update s set raiting = raiting + 10 where raiting < (select raiting from s where dealer_id = 'S4')
select * from s

select distinct(color), city from p

insert s(dealer_id, last_name, city) values ('S10', 'Уайт', 'Нью-Йорк')
select * from s

delete from spj where product_id in (select product_id from j where city ='Рим')
delete from j where city ='Рим'

select distinct(s1.city) from (select city from s union all select city from p union all select city from j) s1

update p set color = 'Желтый' where mass < 15 and color = 'Красный' 
select * from p

select product_id, city from j where city like '_о%'