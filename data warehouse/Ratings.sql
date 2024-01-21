DROP TABLE IF EXISTS ratings;

CREATE TABLE ratings (
    "vehicle.id" serial PRIMARY KEY,
    rating float,
    "renterTripsTaken" smallint,
    "reviewCount" smallint,
    "totaldays" smallint,
    "price per day per rent" smallint
);

COPY ratings("vehicle.id", rating, "renterTripsTaken", "reviewCount", "totaldays", "price per day per rent")
FROM 'C:\data\CarRentalDatam (1).csv'
WITH CSV HEADER DELIMITER ',';

SELECT *FROM public.ratings