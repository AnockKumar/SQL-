select * from super_hero_powers;
select * from hero_battles
left join heroes_information on hero_battles.name = heroes_information.name;
select * from super_hero_powers
right join hero_battles on super_hero_powers.hero_names = hero_battles.name; 
select * from heroes_information right join super_hero_powers on Gender = 'Female' order by name;	
select name from heroes_information where gender = 'female' 
union all
select hero_names as name from super_hero_powers where "Accelerated Healing" ='True';
