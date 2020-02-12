-- Q1
USE sakila;
SELECT MONTHNAME(rental_date) FROM rental WHERE rental_date LIKE '%2006%' ;

-- Q2
SELECT datediff(return_date, rental_date) FROM rental as Result;

--Q3
SELECT  date_format(rental_date, "%d-%M-%Y  %H:%i:%s") as formated_date 
FROM rental 
WHERE year(rental_date)=2005 AND (time(rental_date) between "00:00:00" AND "01:00:00") ;

-- Q4
SELECT rental_date FROM rental WHERE (month(rental_date) between 04 AND 05) ORDER BY rental_date;

-- Q5
SELECT title 
FROM film
WHERE title NOT LIKE "Le%";

-- Q6
SELECT title,
CASE rating
when  "NC-17" then "oui"
when "PG-13" then "non"
end as NC_17
FROM film 
WHERE rating = "PG-13"
OR rating = "NC-17";

-- Q7
SELECT name from category WHERE Left(name,1) = 'A' or left(name,1) = 'C';

-- Q8
SELECT left(name,3) FROM category;

-- Q9
SELECT REPLACE(first_name, 'E', 'A'), last_name FROM actor; 
