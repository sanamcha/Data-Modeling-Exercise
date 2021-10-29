DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;



CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  name TEXT,
);

INSERT INTO moons (name)
VALUES
('The Moon'),('Phobos'),('Deimos'),('Naiad'),('Thalassa'),('Despina'),('Galatea'),('Larissa'),('S/2004 N 1'),('Proteus'),('Triton'),('Nereid'),('Halimede'),('Sao'),('Laomedeia'),('Psamathe'),('Neso');

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
  galaxy TEXT NOT NULL,
  moon_id INTEGER REFERENCES moons
);

INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy, moon_id)
VALUES
  
  
  ('Earth', 1.00, 'The Sun', 'Milky Way', '1'),
  ('Mars', 1.88, 'The Sun', 'Milky Way', '{"2", "3"}'),
  ('Venus', 0.62, 'The Sun', 'Milky Way', '{}'),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', '{"4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"}'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', '{}'),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way', '{}');


