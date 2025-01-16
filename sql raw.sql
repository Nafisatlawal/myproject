# NAME: NAFISAT LAWAL
# DATE: 29/11/24

         -- QUESTION 1
-- show databases
show databases;

-- use database happiness
use happiness;

-- creating a table
CREATE TABLE sales (
    id INT,
    name VARCHAR(50),
    location VARCHAR(50),
    payment_method VARCHAR(50)
);

-- inserting values into the tables
insert into sales
values(54, 'Zaheer', 'Lekki', 'cash'),
      (74, 'Fola', 'Ikorodu', 'debit card'),
      (34, 'Manny', 'Lekki', 'cash'),
      (44, 'Temi', 'Agege', 'credit card'),
      (23, 'Ben', 'Ikorodu', 'debit card'),
      (41, 'James', 'Lekki', 'cash'),
      (70, 'Anne', 'Agege', 'credit card'),
	  (88,'Temi', 'Agege', 'cash'),
      (77, 'Yang', 'Lekki', 'debit card'),
      (40, 'Gladdys', 'Agege', 'debit card');

     -- QUESTION 2
-- joining tables-- innerjoin 
SELECT 
    *
FROM
    table2;
SELECT 
    t1.*, t2.StudentName, t2.Salary
FROM
    table1 t1
        INNER JOIN
    table2 t2 ON t1.Emp_id = t2.Emp_id;

-- left join
SELECT 
    *
FROM
    table2;
SELECT 
    t1.*, t2.StudentName, t2.Salary
FROM
    table1 t1
        LEFT JOIN
    table2 t2 ON t1.Emp_id = t2.Emp_id;

-- right join
SELECT 
    *
FROM
    table2;
SELECT 
    t1.*, t2.StudentName, t2.Salary
FROM
    table1 t1
        RIGHT JOIN
    table2 t2 ON t1.Emp_id = t2.Emp_id;

-- cross join
SELECT 
    *
FROM
    table2;
SELECT 
    t1.*, t2.StudentName, t2.Salary
FROM
    table1 t1
        CROSS JOIN
    table2 t2 ON t1.Emp_id = t2.Emp_id;

           -- QUESTION 3

select * from insurance;
-- Total records in the dataset
SELECT 
    COUNT(*) total_records
FROM
    insurance;

-- Sex distribution
SELECT 
    sex, COUNT(*) count
FROM
    insurance
GROUP BY sex;

-- Total number of children
SELECT 
    SUM(children) Total_num_of_children
FROM
    insurance;

-- Total sex distribution of the children
SELECT 
    sex, SUM(children) Sum_via_gender
FROM
    insurance
GROUP BY sex;

-- Total number of smokers
SELECT 
    smoker, COUNT(*) number_of_smokers
FROM
    insurance
WHERE
    smoker = 'yes';

-- Region with the highest population
SELECT 
    region, COUNT(*) Population
FROM
    insurance
GROUP BY region
ORDER BY population DESC
LIMIT 1;

-- Region distribution by sex
SELECT 
    region, sex, COUNT(*) count
FROM
    insurance
GROUP BY region , sex;

-- Region with the highest male and female
SELECT 
    region, sex, COUNT(*) count
FROM
    insurance
GROUP BY region , sex
ORDER BY count DESC
LIMIT 2;

-- Region with the highest charges
SELECT 
    region, ROUND(max(charges), 2) AS highest_charges
FROM
    insurance
    group by region
    order by highest_charges desc limit 1;
    
    -- Age with the highest body mass index
    SELECT 
    age, MAX(bmi) max_bmi
FROM
    insurance
GROUP BY age
ORDER BY max_bmi DESC;
    
    -- Age occurrence
    SELECT 
    age, COUNT(*) occurrence
FROM
    insurance
GROUP BY age
ORDER BY occurrence DESC;
    
    -- Age with the highest occurrence
    SELECT 
    age, COUNT(*) occurrence
FROM
    insurance
GROUP BY age
ORDER BY occurrence DESC
LIMIT 1;
 
 -- creating age groups
 SELECT 
    age,
    CASE
        WHEN age BETWEEN 18 AND 25 THEN 'young'
        WHEN age BETWEEN 26 AND 36 THEN 'young adult'
        WHEN age BETWEEN 37 AND 45 THEN 'older adult'
        WHEN age BETWEEN 46 AND 56 THEN 'old'
        ELSE 'elderly'
    END AS age_group
FROM
    insurance;
 
 -- mean bmi values
 SELECT 
    AVG(bmi) mean_bmi
FROM
    insurance;
 
 -- Oldest age with the highest number of children
 SELECT 
    children, age
FROM
    insurance
ORDER BY children DESC , age DESC
LIMIT 1;