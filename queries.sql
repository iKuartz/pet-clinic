/*Queries that provide answers to the questions from all projects.*/

SELECT
    *
FROM
    animals
WHERE
    name LIKE '%mon';

SELECT
    *
FROM
    animals
WHERE
    date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT
    *
FROM
    animals
WHERE
    escape_attempts < 3
    AND neutered = TRUE;

SELECT
    *
FROM
    animals
WHERE
    name IN ('Agumon', 'Pikachu');

SELECT
    name,
    escape_attempts
FROM
    animals
WHERE
    weight_kg > 10.5;

SELECT
    *
FROM
    animals
WHERE
    neutered = TRUE;

SELECT
    *
FROM
    animals
WHERE
    name != 'Gabumon';

SELECT
    *
FROM
    animals
WHERE
    weight_kg BETWEEN 0010.400 AND 0017.300;
