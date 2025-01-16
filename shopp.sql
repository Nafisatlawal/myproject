-- use database nafisat
use nafisat;

-- show tables
show tables;

-- show all the data in the table
select * from `nafisat`.`shopping_trends_sql ass`;

-- Gender Distribution
select gender, count(*) count_of_gender from `nafisat`.`shopping_trends_sql ass` group by gender;

-- Total number of customers
select count(distinct `customer id`) Total_number_of_customers from `nafisat`.`shopping_trends_sql ass`;

--  Total number of unique item purchased
select count(distinct `Item Purchased`) count_of_unique_item_purchased from `nafisat`.`shopping_trends_sql ass`;

-- Total number of Unique category
select count(distinct category) count_of_unique_category from `nafisat`.`shopping_trends_sql ass`;

-- Size Distribution
select size, count(*) count_of_sizes from `nafisat`.`shopping_trends_sql ass` group by size;

-- Most used payment method
select `Payment Method`, count(*) total_count_of_each_payment_method from `nafisat`.`shopping_trends_sql ass` group by `Payment Method` order by total_count_of_each_payment_method desc limit 1;

-- Age with the most purchases
select age, count(*) age_group from `nafisat`.`shopping_trends_sql ass` group by age order by age_group desc limit 1 ;

-- Number of Shipping type we have
select count(distinct `shipping type`) count_of_shipping_type from `nafisat`.`shopping_trends_sql ass`;

-- The most used shipping type
select `shipping type`, count(*) count_of_shipping_type  from `nafisat`.`shopping_trends_sql ass` group by `Shipping type` order by count_of_shipping_type desc limit 1; 

-- The season with the most shipping type
select season,count(`shipping type`) count_of_shipping_type  from `nafisat`.`shopping_trends_sql ass` group by season, `Shipping Type` order by count_of_shipping_type desc limit 1 ;

-- Location with the most transaction
select location, count(*) transaction_location from `nafisat`.`shopping_trends_sql ass` group by location order by transaction_location desc limit 1;