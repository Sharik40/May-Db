show databases;

use vshorobura;

#task1
select * from cars where year < 2000;

#task2
select * from cars where year > 2015;

#task3
select * from cars where year between 2008 and 2010;

#task4
select * from cars where year not between 2008 and 2010;

#task5
select * from cars where year = price;

#task6
select * from cars where model = 'bmw' and year < 2014;

#task7
select * from cars where model = 'audi' and year > 2014;

#task8
select * from cars limit 5;

#task9
select * from cars limit 5 offset 212; #select * from cars order by id desc limit 5; - як варінат але тут 5 елементів в зворотньому порядку тому не знаю чи підходить таке

#task10
select avg(price) as avgKiaPrice from cars where model = 'kia';

#task11
select avg(price) as avgCarsPrice from cars;

#task12
select count(*) as countModels, model from cars group by model;

#task13
select count(*) as countModels, model from cars group by model order by countModels desc limit 1;

#task14
select * from cars where model like '_a%a_';

#task15
select * from cars where length(model)>8;

#task16
select * from cars where price > (select avg(price) from cars);
