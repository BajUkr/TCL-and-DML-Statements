-- Inserting data into 'film' table for 'Example Movie'
INSERT INTO film (title, rental_rate, rental_duration)
VALUES ('Example Movie', 4.99, 14); -- 14 days for 2 weeks

-- Inserting actors into 'actor' table
INSERT INTO actor (first_name, last_name)
VALUES ('Actor', 'A'),
       ('Actor', 'B'),
       ('Actor', 'C');

-- NOTE: Retrieve the auto-generated actor IDs and the film ID for 'Example Movie' for the next step

-- Linking actors to 'Example Movie' in 'film_actor' table
-- Replace Actor_X_ID and Example_Movie_ID with actual IDs
INSERT INTO film_actor (actor_id, film_id)
VALUES (/* Actor A's ID */, /* Example Movie's ID */),
       (/* Actor B's ID */, /* Example Movie's ID */),
       (/* Actor C's ID */, /* Example Movie's ID */);

-- Adding 'Example Movie' to a store's inventory in 'inventory' table
-- Replace Example_Movie_ID and Store_ID with actual IDs
INSERT INTO inventory (film_id, store_id)
VALUES (/* Example Movie's ID */, /* Chosen Store's ID */);
