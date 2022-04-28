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


INSERT INTO 
vets (name,age,date_of_graduation)
    VALUES
    ('William Tatcher', 45, '2000-04-23'::date),
    ('Maisy Smith', 26, '2019-01-17'::date),
    ('Stephanie Mendez', 64, '1981-05-04'::date),
    ('Jack Harkness', 38, '2008-06-08'::date);

INSERT INTO
specializations (vets_id,species_id)
    VALUES
    (1, 1),
    (3, 1),
    (3, 2),
    (4, 2);

INSERT INTO 
visits (animals_id,vets_id,date_of_visit)
    VALUES 
    (1, 1, '2020-05-24'::date),
    (1, 3, '2020-07-22'::date),
    (2, 4, '2021-02-02'::date),
    (3, 2, '2020-01-05'::date),
    (3, 2, '2020-03-08'::date),
    (3, 2, '2020-05-14'::date),
    (4, 3, '2021-05-04'::date),
    (5, 4, '2021-02-24'::date),
    (6, 2, '2019-12-21'::date),
    (6, 1, '2020-08-10'::date),
    (6, 2, '2021-04-07'::date),
    (7, 3, '2019-09-29'::date),
    (8, 4, '2020-10-03'::date),
    (8, 4, '2020-11-04'::date),
    (9, 2, '2019-01-24'::date),
    (9, 2, '2019-05-15'::date),
    (9, 2, '2020-02-27'::date),
    (9, 2, '2020-08-03'::date),
    (10, 3, '2020-05-24'::date),
    (10, 1, '2021-01-11'::date);
