-- Update the rental duration and rates for 'Example Movie'
UPDATE film
SET rental_duration = 21, -- 3 weeks
    rental_rate = 9.99
WHERE title = 'Example Movie';

-- Select and update a customer with at least 10 rentals and 10 payments
-- Replace 'YourFirstName', 'YourLastName', and the condition for selecting an address
UPDATE customer
SET first_name = 'YourFirstName',
    last_name = 'YourLastName',
    address_id = (SELECT address_id FROM address WHERE /* condition to select an address */),
    create_date = CURRENT_DATE
WHERE customer_id IN (
    SELECT customer_id
    FROM rental
    GROUP BY customer_id
    HAVING COUNT(*) >= 10
) AND customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING COUNT(*) >= 10
);
