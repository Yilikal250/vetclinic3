CREATE TABLE animals (
 id integer,
name VARCHAR(100),
id int,
date_of_birth date,
escape_attempts integer,
neutered boolean,
weight_kg decimal
);

ALTER TABLE animals
ADD COLUMN species TEXT;
