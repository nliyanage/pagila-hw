/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
SELECT customer.customer_id, customer.first_name, customer.last_name, sum(payment.amount) AS sum FROM customer JOIN payment USING (customer_id) GROUP BY customer_id, first_name, last_name ORDER BY last_name, first_name;
