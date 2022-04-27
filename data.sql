/* Populate database with sample data. */

INSERT INTO 
animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES 
('Agumon','2020-02-03'::date,0,true,0010.230),
('Gabumon','2018-11-15'::date,2,true,0008.000),
('Pikachu','2021-01-07'::date,1,false,0015.040),
('Devimon','2017-05-12'::date,5,true,0011.000),
('Charmander','2020-02-08'::date,0,false,-0011.000),
('Plantmon','2021-11-15'::date,2,true,-0005.700),
('Squirtle','1993-04-02'::date,3,false,-0012.130),
('Angemon','2005-06-12'::date,1,true,-0045.000),
('Boarmon','2005-06-07'::date,7,true,0020.400),
('Blossom','1998-10-13'::date,3,true,0017.000),
('Ditto','2022-05-14'::date,4,true,0022.000);

INSERT INTO 
owners (full_name,age)
VALUES
('Sam Smith',34),
('Jennifer Orwell',19),
('Bob',45),
('Melody Pond',77),
('Dean Winchester',14),
('Jodie Whittaker',38);

INSERT INTO species
    VALUES (DEFAULT, 'Pokemon');

INSERT INTO species
    VALUES (DEFAULT, 'Digimon');

BEGIN;
UPDATE
    animals
SET
    species_id = (
        SELECT
            (id)
        FROM
            species
        WHERE
            name = 'Digimon')
WHERE
    name LIKE '%mon';
SELECT
    *
FROM
    animals;
UPDATE
    animals
SET
    species_id = (
        SELECT
            (id)
        FROM
            species
        WHERE
            name = 'Pokemon')
WHERE
    species_id IS NULL;
SELECT
    *
FROM
    animals;
COMMIT;

BEGIN;
UPDATE
    animals
SET
    owner_id = (
        SELECT
            (id)
        FROM
            owners
        WHERE
            full_name = 'Sam Smith')
WHERE
    name = 'Agumon';
UPDATE
    animals
SET
    owner_id = (
        SELECT
            (id)
        FROM
            owners
        WHERE
            full_name = 'Jennifer Orwell')
WHERE
    name IN ('Gabumon', 'Pikachu');
UPDATE
    animals
SET
    owner_id = (
        SELECT
            (id)
        FROM
            owners
        WHERE
            full_name = 'Bob')
WHERE
    name IN ('Devimon', 'Plantmon');
UPDATE
    animals
SET
    owner_id = (
        SELECT
            (id)
        FROM
            owners
        WHERE
            full_name = 'Melody Pond')
WHERE
    name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE
    animals
SET
    owner_id = (
        SELECT
            (id)
        FROM
            owners
        WHERE
            full_name = 'Dean Winchester')
WHERE
    name IN ('Angemon', 'Boarmon');
SELECT
    *
FROM
    animals;
COMMIT;
