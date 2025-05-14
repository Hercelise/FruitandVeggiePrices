CREATE SCHEMA if not exists FruitsAndVeggies;
USE FruitsAndVeggies;

CREATE TABLE AllFruits2024(
fruit						VARCHAR(50),
form						VARCHAR(50),
average_retail_price		DECIMAL(5, 2),
price_unit					TEXT,
preparation_yield_factor	DECIMAL(3, 2),
cup_equivalent_size			DECIMAL(5, 3),
cup_equivalent_unit			TEXT,
average_price_per_cup		DECIMAL(4, 2),
PRIMARY KEY (fruit, form));

/* Created the table, used the CSV file to import ALL FRUITS data from 2022, for this project, average_retail_price will be the cost the customer pays 
for the product and average_price_per_cup will be the price a business pays for the product
*/

RENAME TABLE AllFruits2024 TO AllFruits2022;

/* Realized I named the table wrong, fixed it
*/

SELECT * FROM AllFruits2022;

CREATE TABLE AllVeggies2022(
vegetable					VARCHAR(50),
form						VARCHAR(50),
average_retail_price		DECIMAL(5, 2),
price_unit					TEXT,
preparation_yield_factor	DECIMAL(3, 2),
cup_equivalent_size			DECIMAL(5, 3),
cup_equivalent_unit			TEXT,
average_price_per_cup		DECIMAL(4, 2),
PRIMARY KEY (vegetable, form));

/* Created the table, used the CSV file to import ALL VEGETABLES data from 2022
*/

SELECT * FROM AllVeggies2022;

CREATE TABLE AllFruits2020(
fruit						VARCHAR(50),
form						VARCHAR(50),
average_retail_price		DECIMAL(5, 2),
price_unit					TEXT,
preparation_yield_factor	DECIMAL(3, 2),
cup_equivalent_size			DECIMAL(5, 3),
cup_equivalent_unit			TEXT,
average_price_per_cup		DECIMAL(4, 2),
PRIMARY KEY (fruit, form));

/* Created the table, used the CSV file to import ALL FRUITS data from 2020
*/

SELECT * FROM AllFruits2020;

CREATE TABLE AllVeggies2020(
vegetable					VARCHAR(50),
form						VARCHAR(50),
average_retail_price		DECIMAL(5, 2),
price_unit					TEXT,
preparation_yield_factor	DECIMAL(3, 2),
cup_equivalent_size			DECIMAL(5, 3),
cup_equivalent_unit			TEXT,
average_price_per_cup		DECIMAL(4, 2),
PRIMARY KEY (vegetable, form));

/* Created the table, used the CSV file to import ALL VEGETABLES data from 2020
*/

SELECT * FROM AllVeggies2020;

CREATE TABLE AllFruits2016(
fruit						VARCHAR(50),
form						VARCHAR(50),
average_retail_price		DECIMAL(5, 2),
price_unit					TEXT,
preparation_yield_factor	DECIMAL(3, 2),
cup_equivalent_size			DECIMAL(5, 3),
cup_equivalent_unit			TEXT,
average_price_per_cup		DECIMAL(4, 2),
PRIMARY KEY (fruit, form));

/* Created the table, turned individual excel spreadsheets into CSV file, used the CSV file to import ALL FRUITS data from 2016
*/

SELECT * FROM AllFruits2016;

CREATE TABLE AllVeggies2016(
vegetable					VARCHAR(50),
form						VARCHAR(50),
average_retail_price		DECIMAL(5, 2),
price_unit					TEXT,
preparation_yield_factor	DECIMAL(3, 2),
cup_equivalent_size			DECIMAL(5, 3),
cup_equivalent_unit			TEXT,
average_price_per_cup		DECIMAL(4, 2),
PRIMARY KEY (vegetable, form));

/* Created the table, turned individual excel spreadsheets into CSV file, used the CSV file to import ALL VEGETABLES data from 2016
*/

SELECT * FROM AllVeggies2016;

CREATE TABLE AllFruits2013(
fruit						VARCHAR(50),
form						VARCHAR(50),
average_retail_price		DECIMAL(5, 2),
price_unit					TEXT,
preparation_yield_factor	DECIMAL(3, 2),
cup_equivalent_size			DECIMAL(5, 3),
cup_equivalent_unit			TEXT,
average_price_per_cup		DECIMAL(4, 2),
PRIMARY KEY (fruit, form));

/* Created the table, turned individual excel spreadsheets into CSV file, used the CSV file to import ALL FRUITS data from 2013
*/

SELECT * FROM AllFruits2013;

CREATE TABLE AllVeggies2013(
vegetable					VARCHAR(50),
form						VARCHAR(50),
average_retail_price		DECIMAL(5, 2),
price_unit					TEXT,
preparation_yield_factor	DECIMAL(3, 2),
cup_equivalent_size			DECIMAL(5, 3),
cup_equivalent_unit			TEXT,
average_price_per_cup		DECIMAL(4, 2),
PRIMARY KEY (vegetable, form));

/* Created the table, turned individual excel spreadsheets into CSV file, used the CSV file to import ALL FRUITS data from 2013
*/

SELECT * FROM AllVeggies2013;

/* 1. Average price of fruits and veggies for the customer price each year
*/

SELECT AVG(average_retail_price) AS avg_fruit_price2013
FROM AllFruits2013;

SELECT AVG(average_retail_price) AS avg_veg_price2013
FROM AllVeggies2013;



SELECT AVG(average_retail_price) AS avg_fruit_price2016
FROM AllFruits2016;

SELECT AVG(average_retail_price) AS avg_veg_price2016
FROM AllVeggies2016;



SELECT AVG(average_retail_price) AS avg_fruit_price2020
FROM AllFruits2020;

SELECT AVG(average_retail_price) AS avg_veg_price2020
FROM AllVeggies2020;



SELECT AVG(average_retail_price) AS avg_fruit_price2022
FROM AllFruits2022;

SELECT AVG(average_retail_price) AS avg_veg_price2022
FROM AllVeggies2022;

/* 2. Average price of fruits and veggies for the business price each year
*/

SELECT AVG(average_price_per_cup) AS avg_fruit_cost2013
FROM AllFruits2013;

SELECT AVG(average_price_per_cup) AS avg_veg_cost2013
FROM AllVeggies2013;



SELECT AVG(average_price_per_cup) AS avg_fruit_cost2016
FROM AllFruits2016;

SELECT AVG(average_price_per_cup) AS avg_veg_cost2016
FROM AllVeggies2016;



SELECT AVG(average_price_per_cup) AS avg_fruit_cost2020
FROM AllFruits2020;

SELECT AVG(average_price_per_cup) AS avg_veg_cost2020
FROM AllVeggies2020;



SELECT AVG(average_price_per_cup) AS avg_fruit_cost2022
FROM AllFruits2022;

SELECT AVG(average_price_per_cup) AS avg_veg_cost2022
FROM AllVeggies2022;

/* 3. Finding the cheapest fruit and veggie for both customer price and business cost for each year
*/

SELECT * FROM AllFruits2013
ORDER BY average_retail_price ASC LIMIT 1;

SELECT * FROM AllVeggies2013
ORDER BY average_retail_price ASC LIMIT 1;

SELECT * FROM AllFruits2013
ORDER BY average_price_per_cup ASC LIMIT 1;

SELECT * FROM AllVeggies2013
ORDER BY average_price_per_cup ASC LIMIT 1;



SELECT * FROM AllFruits2016
ORDER BY average_retail_price ASC LIMIT 1;

SELECT * FROM AllVeggies2016
ORDER BY average_retail_price ASC LIMIT 1;

SELECT * FROM AllFruits2016
ORDER BY average_price_per_cup ASC LIMIT 1;

SELECT * FROM AllVeggies2016
ORDER BY average_price_per_cup ASC LIMIT 1;



SELECT * FROM AllFruits2020
ORDER BY average_retail_price ASC LIMIT 1;

SELECT * FROM AllVeggies2020
ORDER BY average_retail_price ASC LIMIT 1;

SELECT * FROM AllFruits2020
ORDER BY average_price_per_cup ASC LIMIT 1;

SELECT * FROM AllVeggies2020
ORDER BY average_price_per_cup ASC LIMIT 1;



SELECT * FROM AllFruits2022
ORDER BY average_retail_price ASC LIMIT 1;

SELECT * FROM AllVeggies2022
ORDER BY average_retail_price ASC LIMIT 1;

SELECT * FROM AllFruits2022
ORDER BY average_price_per_cup ASC LIMIT 1;

SELECT * FROM AllVeggies2022
ORDER BY average_price_per_cup ASC LIMIT 1;

/* 4. Finding the most expensive fruit and veggie for both customer price and business cost for 2013, 2016, 2020,
and 2022
*/

SELECT * FROM AllFruits2013
ORDER BY average_retail_price DESC LIMIT 1;

SELECT * FROM AllVeggies2013
ORDER BY average_retail_price DESC LIMIT 1;

SELECT * FROM AllFruits2013
ORDER BY average_price_per_cup DESC LIMIT 1;

SELECT * FROM AllVeggies2013
ORDER BY average_price_per_cup DESC LIMIT 1;



SELECT * FROM AllFruits2016
ORDER BY average_retail_price DESC LIMIT 1;

SELECT * FROM AllVeggies2016
ORDER BY average_retail_price DESC LIMIT 1;

SELECT * FROM AllFruits2016
ORDER BY average_price_per_cup DESC LIMIT 1;

SELECT * FROM AllVeggies2016
ORDER BY average_price_per_cup DESC LIMIT 1;



SELECT * FROM AllFruits2020
ORDER BY average_retail_price DESC LIMIT 1;

SELECT * FROM AllVeggies2020
ORDER BY average_retail_price DESC LIMIT 1;

SELECT * FROM AllFruits2020
ORDER BY average_price_per_cup DESC LIMIT 1;

SELECT * FROM AllVeggies2020
ORDER BY average_price_per_cup DESC LIMIT 1;



SELECT * FROM AllFruits2022
ORDER BY average_retail_price DESC LIMIT 1;

SELECT * FROM AllVeggies2022
ORDER BY average_retail_price DESC LIMIT 1;

SELECT * FROM AllFruits2022
ORDER BY average_price_per_cup DESC LIMIT 1;

SELECT * FROM AllVeggies2022
ORDER BY average_price_per_cup DESC LIMIT 1;

/* 5. Fruits and veggies by year for options under one dollar per unit for customers
*/

SELECT fruit, average_retail_price FROM AllFruits2013 WHERE average_retail_price < 1.00;

SELECT fruit, average_retail_price FROM AllFruits2016 WHERE average_retail_price < 1.00;

SELECT fruit, average_retail_price FROM AllFruits2020 WHERE average_retail_price < 1.00;

SELECT fruit, average_retail_price FROM AllFruits2022 WHERE average_retail_price < 1.00;



SELECT vegetable, average_retail_price FROM AllVeggies2013 WHERE average_retail_price < 1.00;

SELECT vegetable, average_retail_price FROM AllVeggies2016 WHERE average_retail_price < 1.00;

SELECT vegetable, average_retail_price FROM AllVeggies2020 WHERE average_retail_price < 1.00;

SELECT vegetable, average_retail_price FROM AllVeggies2022 WHERE average_retail_price < 1.00;

/* 6. Average price per pound for business and customer
*/

SELECT AVG(average_retail_price) AS cust_average_price_lb1 FROM AllFruits2013;

SELECT AVG(average_retail_price) AS cust_average_price_lb2 FROM AllFruits2016;

SELECT AVG(average_retail_price) AS cust_average_price_lb3 FROM AllFruits2020;

SELECT AVG(average_retail_price) AS cust_average_price_lb4 FROM AllFruits2022;



SELECT AVG(average_retail_price) AS cust_average_price_lb5 FROM AllVeggies2013;

SELECT AVG(average_retail_price) AS cust_average_price_lb6 FROM AllVeggies2016;

SELECT AVG(average_retail_price) AS cust_average_price_lb7 FROM AllVeggies2020;

SELECT AVG(average_retail_price) AS cust_average_price_lb8 FROM AllVeggies2022;



SELECT AVG(average_price_per_cup) AS bus_average_price_lb1 FROM AllFruits2013;

SELECT AVG(average_price_per_cup) AS bus_average_price_lb2 FROM AllFruits2016;

SELECT AVG(average_price_per_cup) AS bus_average_price_lb3 FROM AllFruits2020;

SELECT AVG(average_price_per_cup) AS bus_average_price_lb4 FROM AllFruits2022;



SELECT AVG(average_price_per_cup) AS bus_average_price_lb5 FROM AllVeggies2013;

SELECT AVG(average_price_per_cup) AS bus_average_price_lb6 FROM AllVeggies2016;

SELECT AVG(average_price_per_cup) AS bus_average_price_lb7 FROM AllVeggies2020;

SELECT AVG(average_price_per_cup) AS bus_average_price_lb8 FROM AllVeggies2022;

/* 7. Average price by form (canned, dried, fresh, etc.) for customers
*/

SELECT form, AVG(average_retail_price) AS cust_avg_price_form1 
	FROM AllFruits2013 GROUP BY form;

SELECT form, AVG(average_retail_price) AS cust_avg_price_form2 
	FROM AllFruits2016 GROUP BY form;

SELECT form, AVG(average_retail_price) AS cust_avg_price_form3 
	FROM AllFruits2020 GROUP BY form;

SELECT form, AVG(average_retail_price) AS cust_avg_price_form4 
	FROM AllFruits2022 GROUP BY form;



SELECT form, AVG(average_retail_price) AS cust_avg_price_form5 
	FROM AllVeggies2013 GROUP BY form;
    
SELECT form, AVG(average_retail_price) AS cust_avg_price_form6
	FROM AllVeggies2016 GROUP BY form;

SELECT form, AVG(average_retail_price) AS cust_avg_price_form7 
	FROM AllVeggies2020 GROUP BY form;

SELECT form, AVG(average_retail_price) AS cust_avg_price_form8 
	FROM AllVeggies2022 GROUP BY form;
    
/* 8. Average price by form (canned, dried, fresh, etc.) for a business
*/

SELECT form, AVG(average_price_per_cup) AS bus_avg_price_1
	FROM AllFruits2013 GROUP BY form;

SELECT form, AVG(average_price_per_cup) AS bus_avg_price_2
	FROM AllFruits2016 GROUP BY form;
    
SELECT form, AVG(average_price_per_cup) AS bus_avg_price_3
	FROM AllFruits2020 GROUP BY form;
    
SELECT form, AVG(average_price_per_cup) AS bus_avg_price_4
	FROM AllFruits2022 GROUP BY form;



SELECT form, AVG(average_price_per_cup) AS bus_avg_price_5
	FROM AllVeggies2013 GROUP BY form;
    
SELECT form, AVG(average_price_per_cup) AS bus_avg_price_6
	FROM AllVeggies2016 GROUP BY form;
    
SELECT form, AVG(average_price_per_cup) AS bus_avg_price_7
	FROM AllVeggies2020 GROUP BY form;
    
SELECT form, AVG(average_price_per_cup) AS bus_avg_price_8
	FROM AllVeggies2022 GROUP BY form;
    
/* 9. Count of item by form 
*/

SELECT form, COUNT(*) AS fruit_form_count1 
	FROM AllFruits2013 GROUP BY form;
    
SELECT form, COUNT(*) AS fruit_form_count2 
	FROM AllFruits2016 GROUP BY form;
    
SELECT form, COUNT(*) AS fruit_form_count3 
	FROM AllFruits2020 GROUP BY form;
    
SELECT form, COUNT(*) AS fruit_form_count4
	FROM AllFruits2022 GROUP BY form;



SELECT form, COUNT(*) AS veggie_form_count1
	FROM AllVeggies2013 GROUP BY form;

SELECT form, COUNT(*) AS veggie_form_count2
	FROM AllVeggies2016 GROUP BY form;

SELECT form, COUNT(*) AS veggie_form_count3
	FROM AllVeggies2020 GROUP BY form;
    
SELECT form, COUNT(*) AS veggie_form_count4
	FROM AllVeggies2022 GROUP BY form;
    
/* 10. Items that are above the customer median price for fruits and veggies, median = middle price of item count
*/

SELECT fruit, average_retail_price
	FROM AllFruits2013 
    WHERE average_retail_price > (SELECT AVG(average_retail_price)
		FROM (SELECT average_retail_price FROM AllFruits2013 ORDER BY average_retail_price)
        AS median_price);

SELECT fruit, average_retail_price
	FROM AllFruits2016 
    WHERE average_retail_price > (SELECT AVG(average_retail_price)
		FROM (SELECT average_retail_price FROM AllFruits2016 ORDER BY average_retail_price)
        AS median_price);
        
SELECT fruit, average_retail_price
	FROM AllFruits2020 
    WHERE average_retail_price > (SELECT AVG(average_retail_price)
		FROM (SELECT average_retail_price FROM AllFruits2020 ORDER BY average_retail_price)
        AS median_price);
        
SELECT fruit, average_retail_price
	FROM AllFruits2020 
    WHERE average_retail_price > (SELECT AVG(average_retail_price)
		FROM (SELECT average_retail_price FROM AllFruits2020 ORDER BY average_retail_price)
        AS median_price);
        
        
        
SELECT vegetable, average_retail_price
	FROM AllVeggies2013 
    WHERE average_retail_price > (SELECT AVG(average_retail_price)
		FROM (SELECT average_retail_price FROM AllVeggies2013 ORDER BY average_retail_price)
        AS median_price);
        
SELECT vegetable, average_retail_price
	FROM AllVeggies2020 
    WHERE average_retail_price > (SELECT AVG(average_retail_price)
		FROM (SELECT average_retail_price FROM AllVeggies2020 ORDER BY average_retail_price)
        AS median_price);
        
SELECT vegetable, average_retail_price
	FROM AllVeggies2022 
    WHERE average_retail_price > (SELECT AVG(average_retail_price)
		FROM (SELECT average_retail_price FROM AllVeggies2022 ORDER BY average_retail_price)
        AS median_price);
        
/* 11. Cheapest fruit and veggie for customer by form
*/

SELECT fruit, form, average_retail_price
	FROM AllFruits2013 a
    WHERE average_retail_price = (SELECT MIN(average_retail_price)
							      FROM AllFruits2013
                                  WHERE form = a.form);

SELECT fruit, form, average_retail_price
	FROM AllFruits2016 b
    WHERE average_retail_price = (SELECT MIN(average_retail_price)
							      FROM AllFruits2016
                                  WHERE form = b.form);
                                  
SELECT fruit, form, average_retail_price
	FROM AllFruits2020 c
    WHERE average_retail_price = (SELECT MIN(average_retail_price)
							      FROM AllFruits2020
                                  WHERE form = c.form);
                                  
SELECT fruit, form, average_retail_price
	FROM AllFruits2022 d
    WHERE average_retail_price = (SELECT MIN(average_retail_price)
							      FROM AllFruits2022
                                  WHERE form = d.form);
                                  
	
    
SELECT vegetable, form, average_retail_price
	FROM AllVeggies2013 a
	WHERE average_retail_price = (SELECT MIN(average_retail_price)
								 FROM AllVeggies2013
                                 WHERE form = a.form);
                                 
SELECT vegetable, form, average_retail_price
	FROM AllVeggies2016 b
	WHERE average_retail_price = (SELECT MIN(average_retail_price)
								 FROM AllVeggies2016
                                 WHERE form = b.form);

SELECT vegetable, form, average_retail_price
	FROM AllVeggies2020 c
	WHERE average_retail_price = (SELECT MIN(average_retail_price)
								 FROM AllVeggies2020
                                 WHERE form = c.form);
                                 
SELECT vegetable, form, average_retail_price
	FROM AllVeggies2022 d
	WHERE average_retail_price = (SELECT MIN(average_retail_price)
								 FROM AllVeggies2022
                                 WHERE form = d.form);
                                 
/* 12. Least profitable fruit and veggie for a business
*/

SELECT fruit, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit1
    FROM AllFruits2013
    ORDER BY profit1 ASC LIMIT 1;
	
SELECT fruit, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit2
    FROM AllFruits2016
    ORDER BY profit2 ASC LIMIT 1;
    
SELECT fruit, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit3
    FROM AllFruits2020
    ORDER BY profit3 ASC LIMIT 1;
	
SELECT fruit, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit4
    FROM AllFruits2022
    ORDER BY profit4 ASC LIMIT 1;
    
    
    
SELECT vegetable, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit5
    FROM AllVeggies2013
    ORDER BY profit5 ASC LIMIT 1;
    
SELECT vegetable, form, average_price_per_cup, average_retail_price, 
	(average_retail_price - average_price_per_cup) AS profit6
    FROM AllVeggies2016
    ORDER BY profit6 ASC LIMIT 1;
    
SELECT vegetable, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit7
    FROM AllVeggies2020
    ORDER BY profit7 ASC LIMIT 1;
		
SELECT vegetable, form, average_price_per_cup, average_retail_price, 
	(average_retail_price - average_price_per_cup) AS profit8
    FROM AllVeggies2022
    ORDER BY profit8 ASC LIMIT 1;

/* 13. Most profitable fruit and veggie for a business
*/

SELECT fruit, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit1
    FROM AllFruits2013
    ORDER BY profit1 DESC LIMIT 1;
    
SELECT fruit, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit2
    FROM AllFruits2016
    ORDER BY profit2 DESC LIMIT 1;
    
SELECT fruit, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit3
    FROM AllFruits2020
    ORDER BY profit3 DESC LIMIT 1;
    
SELECT fruit, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit4
    FROM AllFruits2022
    ORDER BY profit4 DESC LIMIT 1;
    
    
    
SELECT vegetable, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit5
    FROM AllVeggies2013
    ORDER BY profit5 DESC LIMIT 1;
    
SELECT vegetable, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit6
    FROM AllVeggies2016
    ORDER BY profit6 DESC LIMIT 1;
    
SELECT vegetable, form, average_price_per_cup, average_retail_price,
	(average_retail_price - average_price_per_cup) AS profit7
    FROM AllVeggies2020
    ORDER BY profit7 DESC LIMIT 1;
    
SELECT vegetable, form, average_price_per_cup, average_retail_price, 
	(average_retail_price - average_price_per_cup) AS profit8
    FROM AllVeggies2022
    ORDER BY profit8 DESC LIMIT 1; 
    
/* 14. Join fruits and veggies to see consumer price change from 2013 to 2022
*/

SELECT AllFruits2013.fruit,
	   AllFruits2013.form,
       AllFruits2013.average_retail_price AS price_13,
       AllFruits2016.average_retail_price AS price_16,
       AllFruits2020.average_retail_price AS price_20,
       AllFruits2022.average_retail_price AS price_22,
       (AllFruits2022.average_retail_price - AllFruits2013.average_retail_price) AS overall_difference
FROM AllFruits2013
JOIN AllFruits2016
	ON AllFruits2013.fruit = AllFruits2016.fruit AND AllFruits2013.form = AllFruits2016.form
JOIN AllFruits2020
	ON AllFruits2013.fruit = AllFruits2020.fruit AND AllFruits2013.form = AllFruits2020.form
JOIN AllFruits2022
	ON AllFruits2013.fruit = AllFruits2022.fruit AND AllFruits2013.form = AllFruits2020.form;
    
    

SELECT AllVeggies2013.vegetable,
	   AllVeggies2013.form,
       AllVeggies2013.average_retail_price AS price_13,
       AllVeggies2016.average_retail_price AS price_16,
       AllVeggies2020.average_retail_price AS price_20,
       AllVeggies2022.average_retail_price AS price_22,
       (AllVeggies2022.average_retail_price - AllVeggies2013.average_retail_price) AS overall_difference
FROM AllVeggies2013
JOIN AllVeggies2016
	ON AllVeggies2013.vegetable = AllVeggies2016.vegetable AND AllVeggies2013.form = AllVeggies2016.form
JOIN AllVeggies2020
	ON AllVeggies2013.vegetable = AllVeggies2020.vegetable AND AllVeggies2013.form = AllVeggies2020.form
JOIN AllVeggies2022
	ON AllVeggies2013.vegetable = AllVeggies2022.vegetable AND AllVeggies2013.form = AllVeggies2022.form;
    
/* 15. Join fruits and veggies to see all business cost change from 2013 to 2022
*/
    
SELECT AllFruits2013.fruit,
	   AllFruits2013.form,
       AllFruits2013.average_price_per_cup AS price_13,
       AllFruits2016.average_price_per_cup AS price_16,
       AllFruits2020.average_price_per_cup AS price_20,
       AllFruits2022.average_price_per_cup AS price_22,
       (AllFruits2022.average_price_per_cup - AllFruits2013.average_price_per_cup) AS overall_difference
FROM AllFruits2013
JOIN AllFruits2016
	ON AllFruits2013.fruit = AllFruits2016.fruit AND AllFruits2013.form = AllFruits2016.form
JOIN AllFruits2020
	ON AllFruits2013.fruit = AllFruits2020.fruit AND AllFruits2013.form = AllFruits2020.form
JOIN AllFruits2022
	ON AllFruits2013.fruit = AllFruits2022.fruit AND AllFruits2013.form = AllFruits2022.form;
    
SELECT AllVeggies2013.vegetable,
	   AllVeggies2013.form,
       AllVeggies2013.average_price_per_cup AS price_13,
       AllVeggies2016.average_price_per_cup AS price_16,
       AllVeggies2020.average_price_per_cup AS price_20,
       AllVeggies2022.average_price_per_cup AS price_22,
       (AllVeggies2022.average_price_per_cup - AllVeggies2013.average_price_per_cup) AS overall_difference
FROM AllVeggies2013
JOIN AllVeggies2016
	ON AllVeggies2013.vegetable = AllVeggies2016.vegetable AND AllVeggies2013.form = AllVeggies2016.form
JOIN AllVeggies2020
	ON AllVeggies2013.vegetable = AllVeggies2020.vegetable AND AllVeggies2013.form = AllVeggies2020.form
JOIN AllVeggies2022
	ON AllVeggies2013.vegetable = AllVeggies2022.vegetable AND AllVeggies2013.form = AllVeggies2022.form;
    