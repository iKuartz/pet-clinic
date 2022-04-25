/* Populate database with sample data. */

INSERT INTO 
animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES 
(1,'Agumon','2020-02-03'::date,0,true,0010.230),
(2,'Gabumon','2018-11-15'::date,2,true,0008.000),
(3,'Pikachu','2021-01-07'::date,1,false,0015.040),
(4,'Devimon','2017-05-12'::date,5,true,0011.000)
RETURNING *;
