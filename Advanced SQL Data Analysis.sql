use hero;
select * from heroes_information;
select Race,
case 
when Race = 'Human'
then '1'
when Race <> 'Human'
then '0'
end as Human_race
from heroes_information
order by Human_race desc;

select name, weight, rank()over(order by weight desc) from heroes_information;

SELECT SUBSTRING(UPPER(name), 1, 1) AS first_letter,
       COUNT(*) AS frequency
FROM heroes_information
WHERE name IS NOT NULL
GROUP BY SUBSTRING(UPPER(name), 1, 1)
ORDER BY first_letter;

SELECT race
FROM heroes_information
GROUP BY race
HAVING AVG(weight) > 150 AND AVG(height) > 100;



