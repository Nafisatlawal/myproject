#NAME: NAFISAT LAWAL
#DATE: 15/10/2024

-- use database
use nafisat;

-- Show tables
show tables;

-- Drop table weekend
drop table weekend;

-- Create table
CREATE TABLE weekend (
    Firstname VARCHAR(255),
    age INT,
    tribe VARCHAR(255),
    location VARCHAR(255)
);  

-- Insert into table
insert into weekend( Firstname, age, tribe, location)
values('Adam', 23, 'Hausa', 'Abia'),
	  ('Mary',34, 'Yoruba', 'Kano'),
      ('Simon', 45, 'Igbo', 'Null'),
      ('Null',56, 'Nupe', 'Null'),
      ('Null',65, 'Null', 'Null');

-- Show all values in a table
SELECT 
    *
FROM
    weekend;
      
      -- Add column 
      Alter table weekend
      Add column sample varchar(255);

-- Update table 
UPDATE weekend 
SET 
    sample = LEFT(tribe, 3)
WHERE
    age = 65;
      
      -- Add column
      alter table weekend
      add column Midpoint varchar(255);

-- Update table
UPDATE weekend 
SET 
    combination = CONCAT(Firstname, location);

-- Tribe where the age is above 36
SELECT 
    tribe, age
FROM
    weekend
WHERE
    age > 36;

-- Extraction of second and third alphabets in a column
UPDATE weekend 
SET 
    Midpoint = MID(tribe, 2, 2);
     
     -- modify a column
     alter table weekend
      modify age text;
     
     -- Describe table
     describe weekend;

-- Uppercase the column
UPDATE weekend 
SET 
    firstname = UPPER(Firstname);
      
      
