-- Removing a previously inserted film from inventory and all corresponding rental records
-- Assuming the film title is 'Example Movie'

-- Deleting rental records for 'Example Movie'
DELETE FROM rental
WHERE inventory_id IN (
    SELECT inventory_id FROM inventory
    WHERE film_id = (SELECT film_id FROM film WHERE title = 'Example Movie')
);

-- Deleting 'Example Movie' from inventory
DELETE FROM inventory
WHERE film_id = (SELECT film_id FROM film WHERE title = 'Example Movie');

-- Removing any records related to you (as a customer) from all tables except 'Customer' and 'Inventory'
-- Deleting records related to you as a customer from the 'rental' table
DELETE FROM rental WHERE customer_id = 'YourCustomerID';

-- Deleting records related to you as a customer from the 'payment' table
DELETE FROM payment WHERE customer_id = 'YourCustomerID';


-- DELETE vs. TRUNCATE Statement Explanation

-- DELETE Statement:
-- - Deletes specific rows based on a condition.
-- - Can be used with a WHERE clause.
-- - Logs each row deletion, slower for large datasets.
-- - Triggers are fired for each row.
-- - Does not reset auto-increment counter.

-- TRUNCATE Statement:
-- - Quickly removes all rows from a table.
-- - Cannot be used with a WHERE clause; removes all rows.
-- - Faster than DELETE, less logging, no row-level triggers.
-- - Resets auto-increment counter to seed value.
-- - Less flexible, no conditional row deletion.
