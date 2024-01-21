-- Creating dimension tables in the public schema without primary keys
CREATE TABLE public.customers_dim AS
SELECT
    customer_id,
    gender,
    age,
    address,
    country,
    city,
    state,
    ssn,
    phone,
    postal_code
FROM public.customers;

CREATE TABLE public.ratings_dim AS
SELECT
    "vehicle.id" AS rating_id,
    rating,
    "renterTripsTaken",
    "reviewCount",
    "totaldays",
    "price per day per rent"
FROM public.ratings;

CREATE TABLE public.vehicles_dim AS
SELECT
    "vehicle.id" AS vehicle_id,
    "vehicle.make",
    "vehicle.model",
    "vehicle.type",
    "fuelType",
    "vehicle.year",
    "vehicle category"
FROM public.vehicles;

-- Adding primary keys using ALTER TABLE
ALTER TABLE public.customers_dim
ADD PRIMARY KEY (customer_id);

ALTER TABLE public.ratings_dim
ADD PRIMARY KEY (rating_id);

ALTER TABLE public.vehicles_dim
ADD PRIMARY KEY (vehicle_id);
