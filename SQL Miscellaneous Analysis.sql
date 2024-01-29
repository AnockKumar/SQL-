use hero;
select * from hero_battles;	
select 'name' from hero_battles where 'Batman';
select sum(num_enemies) from hero_battles;
select cast("24.423423" as float);
select date from hero_battles;
select date, year(date) as Hero_year, month(date)as Hero_month, day(date) as Hero_date, minute(date) as minutes_fought from hero_battles;
select num_enemies, outcome, rank() over( partition by outcome order by num_enemies asc) from hero_battles;
select name,num_enemies, outcome  from hero_battles where outcome like "%Won%";
select name, num_enemies from hero_battles where outcome = 'won';
select name, replace ( name, 'Batman','Bat Woman') from hero_battles where name = 'Bat Woman'; 
select name, replace ( name, 'Batman','Bat Woman') from hero_battles order by name = 'bat Woman'; 
select date, day(date) as Hero_date, time(date) as time from hero_battles;
SELECT time, date, CONCAT('This battle occurred at ', DATE_FORMAT(date, '%H:%i')) AS time_description
FROM hero_battles;
select * from heroes_information;
select concat( name, '  '  'is from ', Publisher) As Super_information from heroes_information; 