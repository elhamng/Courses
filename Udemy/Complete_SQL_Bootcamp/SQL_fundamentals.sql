SELECT * FROM customer;
SELECT * FROM customer WHERE first_name = 'Jared';

/* WHERE */

SELECT COUNT(*) FROM film 
WHERE rental_rate > 4 and replacement_cost>= 19.99;
SELECT COUNT(*) FROM film
WHERE rating != 'R';

/* what is the email for 
the customer with the name Nancy Thomas?
*/
SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

/* ORDER BY */

SELECT * FROM customer 
ORDER BY first_name DESC; 

SELECT * FROM customer 
ORDER BY store_id;

SELECT store_id, first_name,last_name FROM customer 
ORDER BY store_id,first_name;

SELECT store_id, first_name,last_name FROM customer 
ORDER BY store_id DESC,first_name;

/* LIMIT */

SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5;
/* we want to reward our first 10 paying customers */

/* what are the customer ids of the first 10 customers
who created a payment? */

SELECT customer_id FROM payment 
ORDER BY payment_date ASC LIMIT 10;

/* shortest movies title*/
SELECT film_id,title,length FROM film
ORDER BY length ASC 
LIMIT 5;

SELECT COUNT(title) FROM film
WHERE length <= 50;

/* BETWEEN */
SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9 ;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15' ;

/* IN */

SELECT * FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99,1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('Jahn','Jack','Nancy');

/* LIKE ILIKE*/
SELECT * FROM customer
WHERE first_name LIKE 'J%'AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name ILIKE 'j%'AND last_name ILIKE 'S%';

/*CHALLENGES
1- How many payment trasactions were greater than 5$?
*/

SELECT COUNT(*) FROM payment
WHERE amount > 5 ;

/*
2- How many actors have a first name 
that starts with the letter p?
*/
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%'; 

/*
3- How many unique districts are our customers from?
*/
SELECT COUNT(DISTINCT(district)) 
FROM address;

/*make list of unique districts*/
SELECT DISTINCT(district) 
FROM address;

/*
4- How many films have a rating of R and 
a replacement cost between 5$ and 15$
*/
 
 SELECT COUNT(*) FROM film
 WHERE rating = 'R' AND 
 replacement_cost BETWEEN 5 AND 15;
 /*
 5- How many films have the word Truman somewhere in the title?
 */
 SELECT COUNT(*) FROM film
 WHERE title LIKE '%Truman%';
 
 