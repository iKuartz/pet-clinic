/* Populate database with sample data. */

INSERT INTO 
animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES 
(1,'Agumon','2020-02-03'::date,0,true,0010.230),
(2,'Gabumon','2018-11-15'::date,2,true,0008.000),
(3,'Pikachu','2021-01-07'::date,1,false,0015.040),
(4,'Devimon','2017-05-12'::date,5,true,0011.000),
(5,'Charmander','2020-02-08'::date,0,false,-0011.000),
(6,'Plantmon','2021-11-15'::date,2,true,-0005.700),
(7,'Squirtle','1993-04-02'::date,3,false,-0012.130),
(8,'Angemon','2005-06-12'::date,1,true,-0045.000),
(9,'Boarmon','2005-06-07'::date,7,true,0020.400),
(10,'Blossom','1998-10-13'::date,3,true,0017.000),
(11,'Ditto','2022-05-14'::date,4,true,0022.000);
