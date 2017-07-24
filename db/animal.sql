DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS animal_types;

CREATE TABLE animal_types(
id SERIAL4 PRIMARY KEY,
type VARCHAR(255) NOT NULL
);

CREATE TABLE customers(
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address TEXT,
  telephone VARCHAR(255)
);

CREATE TABLE animals(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  type_id INT4 REFERENCES animal_types(id),
  ready BOOLEAN,
  sex VARCHAR(255),
  age VARCHAR(255),
  description TEXT,
  owner_id INT4
);

