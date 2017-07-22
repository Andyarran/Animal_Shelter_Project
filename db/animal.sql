DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS animals;

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
  type VARCHAR(255),
  ready BOOLEAN,
  sex VARCHAR(255),
  age VARCHAR(255),
  description TEXT,
  owner_id INT4
);