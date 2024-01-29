use hero;
select * from heroes_information;
SELECT *
FROM heroes_information
WHERE race IN (
    SELECT race
    FROM heroes_information
    GROUP BY race
    HAVING AVG(weight) > 400
);

CREATE TEMPORARY TABLE bigs AS
SELECT *
FROM heroes_information
WHERE race IN (
    SELECT race
    FROM heroes_information
    GROUP BY race
    HAVING AVG(weight) > 400
);
SELECT * From bigs;

-- Create a view named 'marvel_tall_heroes'
CREATE VIEW marvel_tall_heroes AS
SELECT *
FROM heroes_information
WHERE publisher = 'Marvel Comics'
  AND height > (SELECT AVG(height) FROM heroes_information WHERE publisher = 'Marvel Comics');
  
select * from marvel_tall_heroes;

-- Create an index on the 'name' and 'race' columns in the 'heroes_information' table
CREATE INDEX idx_name_race ON heroes_information (name, Race);

-- Create a stored procedure named 'all_dc_rows'


DELIMITER //

CREATE PROCEDURE all_dc_rows()
BEGIN
    -- Select all data from 'heroes_information' for superheroes from 'DC Comics'
    SELECT *
    FROM heroes_information
    WHERE publisher = 'DC Comics';
END //

DELIMITER ;


