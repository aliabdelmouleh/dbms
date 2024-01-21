CREATE TABLE rental_facts (
    rental_id serial PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    vehicle_id INT REFERENCES vehicles("vehicle.id"),
    rating_id INT REFERENCES ratings("vehicle.id"),
    rental_date date,
    rental_time time,
    rental_duration smallint
);
