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


