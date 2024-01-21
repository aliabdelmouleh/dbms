
DROP TABLE IF EXISTS vehicles;

CREATE TABLE vehicles (
    "vehicle.id" serial PRIMARY KEY,
    "vehicle.make" varchar(255),
    "vehicle.model" varchar(255),
    "vehicle.type" varchar(255),
    "fuelType" varchar(255),
    "vehicle.year" smallint,
    "vehicle category" varchar(255)
);

DROP TABLE IF EXISTS vehicles;

CREATE TABLE vehicles (
    "vehicle.id" serial PRIMARY KEY,
    "vehicle.make" varchar(255),
    "vehicle.model" varchar(255),
    "vehicle.type" varchar(255),
    "fuelType" varchar(255),
    "vehicle.year" smallint,
    "vehicle category" varchar(255)
);
COPY vehicles ("vehicle.id", "vehicle.make", "vehicle.model", "vehicle.type", "fuelType", "vehicle.year", "vehicle category")
FROM 'C:\data\vehicules.csv'
WITH CSV HEADER DELIMITER ',';
SELECT *FROM public.vehicles





