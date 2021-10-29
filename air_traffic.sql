-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic


CREATE TABLE countries
(
    id SERIAL PRIMARY KEY,
    country_name TEXT NOT NULL
);
INSERT INTO countries (country_name)
VALUES ('United States'),('Japan'),('France'),('UAE'),('Brazil '),('Mexico'),('Morocco'),('China'),('Chile');

CREATE TABLE cities
(   
    id SERIAL PRIMARY KEY,
    city_name TEXT NOT NULL
);
INSERT INTO cities (city_name)
VALUES ('Washington DC'),('Tokyo'),('Los Angeles'),('Seattle'),('Paris'),('Dubai'),('New York'),('Cedar Rapids'),('Charlotte'),('Sao Paolo'),('London'),('Las Vegas'),('Mexico City'),('Casablanca'),('Beijing '),('Chicago'),('New Orleans'),('Santiago');

CREATE TABLE airlines
(
    id SERIAL PRIMARY KEY,
    airlines_name TEXT NOT NULL
);
INSERT INTO airlines (city_name)
VALUES ('United'),('British Airways'),('Delta '),('TUI Fly Belgium'),('Air China'),('American Airlines'),('Avianca Brasil');


CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airline_id INTEGER REFERENCES airlines ,
  from_city_id INTEGER REFERENCES cities,
  from_country_id INTEGER REFERENCES countries,
  to_city_id INTEGER REFERENCES cities,
  to_country INTEGER REFERENCES countries
);

INSERT INTO tickets
  (first_name, last_name, seat, departure, arrival, airline, from_city_id, from_country_id, to_city_id, to_country_id)
VALUES
  ('Jennifer', 'Finch', '33B', '2018-04-08 09:00:00', '2018-04-08 12:00:00', '1', '1', '1', 'Seattle', '1'),
  ('Thadeus', 'Gathercoal', '8A', '2018-12-19 12:45:00', '2018-12-19 16:15:00', '2', '2', '2', '11', '10'),
  ('Sonja', 'Pauley', '12F', '2018-01-02 07:00:00', '2018-01-02 08:03:00', '3', '3', '1', '12', '1'),
  ('Jennifer', 'Finch', '20A', '2018-04-15 16:50:00', '2018-04-15 21:00:00', '3', '4', '1', '13', '6'),
  ('Waneta', 'Skeleton', '23D', '2018-08-01 18:30:00', '2018-08-01 21:50:00', '4', '5', '3', '14', '7'),
  ('Thadeus', 'Gathercoal', '18C', '2018-10-31 01:15:00', '2018-10-31 12:55:00', '5', '6', '4', '15', '8'),
  ('Berkie', 'Wycliff', '9E', '2019-02-06 06:00:00', '2019-02-06 07:47:00', '1', '7', '1', '9', '1'),
  ('Alvin', 'Leathes', '1A', '2018-12-22 14:42:00', '2018-12-22 15:56:00', '6', '8', '1', '16', '1'),
  ('Berkie', 'Wycliff', '32B', '2019-02-06 16:28:00', '2019-02-06 19:18:00', '6', '9', '1', '17', '1'),
  ('Cory', 'Squibbes', '10D', '2019-01-20 19:30:00', '2019-01-20 22:45:00', '7', '10', '5', '18', '9');