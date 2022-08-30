--SELECT

1. SELECT * FROM staff ORDER BY first_name;
2. SELECT * FROM payment ORDER BY amount DESC;
3. SELECT * FROM address ORDER BY postal_code ASC

--JOIN

4. SELECT customer.customer_id,address.address_id,address FROM customer INNER JOIN address ON customer.customer_id = address.address_id

5. SELECT * FROM store INNER JOIN address ON store.address_id = address.address_id

6. SELECT * FROM store INNER JOIN staff ON store.manager_staff_id = staff.staff_id

7. SELECT * FROM address INNER JOIN city ON city.city_id = address.city_id

-- GROUP

8. SELECT DATE(payment_date) ,SUM(amount) FROM payment GROUP BY DATE(payment_date)
9. SELECT DATE(payment_date) ,AVG(amount) FROM payment GROUP BY DATE(payment_date)
--Correct SELECT AVG(amount) FROM payment 
10.SELECT DATE(payment_date), SUM(amount) FROM payment GROUP BY DATE(payment_date)
-- Correct SELECT SUM(amount) FROM payment 