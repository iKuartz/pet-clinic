/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
   id int GENERATED ALWAYS AS IDENTITY,
   name VARCHAR(50) NOT NULL,
   date_of_birth DATE NOT NULL,
   escape_attempts INT  NOT NULL,
   neutered BOOL NOT NULL,
   weight_kg DECIMAL(7,3) NOT NULL,
   PRIMARY KEY (id)
);

ALTER TABLE animals
    ADD species VARCHAR(100);

CREATE TABLE owners (
    id int GENERATED ALWAYS AS IDENTITY,
    full_name varchar(100),
    age int,
    PRIMARY KEY (id)
);

CREATE TABLE species (
    id int GENERATED ALWAYS AS IDENTITY,
    name varchar(100),
    PRIMARY KEY (id)
);

ALTER TABLE animals
    DROP species;

ALTER TABLE animals
    ADD species_id INT REFERENCES species (id);

ALTER TABLE animals
    ADD owner_id INT REFERENCES owners (id);
