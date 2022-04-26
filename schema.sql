/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
   id int PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   date_of_birth DATE NOT NULL,
   escape_attempts INT  NOT NULL,
   neutered BOOL NOT NULL,
   weight_kg DECIMAL(7,3) NOT NULL
);

ALTER TABLE animals
    ADD species VARCHAR(100);
