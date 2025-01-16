-- using an existing database
use nafisat;

-- creating a new table nigeria
create table Nigeria(state varchar (255));

-- show table
show tables;

-- inserting values into table
insert into Nigeria(state)
values ('Abia'), ('Adamawa'), ('Akwa_Ibom'), ('Anambra'), ('Bauchi'), ('Bayelsa'), ('Benue'), ('Borno'), 
 ('Cross_river'), ('Delta'), ('Ebonyi'), ('Edo'), ('Ekiti'), ('Enugu'), ('Gombe'), ('Imo'), ('Jigawa'),
 ('Kaduna'), ('Kano'), ('kastina'), ('kebbi'), ('Kogi'), ('Kwara'), ('Lagos'), ('Nassarrawa'), 
('Niger'), ('Ogun'), ('Ondo'), ('Osun'), ('Oyo'), ('Plateau'), ('Rivers'), ('Sokoto'), 
('Taraba'), ('Yobe'), ('Zamfara'), ('FCT');

select * from Nigeria;

-- inputing our case study lol
select state,
case 
when state in ('Adamawa', 'Bauchi', 'Borno', 'Gombe', 'Taraba', 'Yobe') then 'North_east'
when state in ('Kaduna', 'kastina', 'kano', 'kebbi', 'jigawa', 'sokoto', 'zamfara') then 'North_west'
when state in ('Benue', 'Kogi', 'Kwara', 'Nassarawa', 'Niger', 'Plateau', 'FCT') then 'North_central'
when state in ('Abia', 'Enugu', 'Anambra', 'Ebonyi', 'Imo') then 'south_east'
when state in ('akwa_ibom', 'Bayelsa', 'cross_river', 'delta', 'edo', 'rivers') then 'south_south'
when state in ('ogun','ondo','oyo', 'osun', 'ekiti', 'lagos') then 'south_west'
else 'anonymous'
end as 'geo_political_zones'
from Nigeria;
