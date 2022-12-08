INSERT INTO vets (name, age, date_of_graduation)
VALUES
('William Tatcher', 45, DATE '2000-04-23'),
('Maisy Smith', 26, DATE '2019-01-17'),
('Stephanie Mendez', 64, DATE '1981-05-04'),
('Jack Harkness', 38, DATE '2008-06-08');

INSERT INTO specializations (vet_id, species_id)
VALUES
(1, 1),
(3, 2),
(3, 1),
(4,2);
--inserted datas into visits--
INSERT INTO visits (animal_id, vet_id, date_of_visit)
VALUES
(1, 1, DATE '2020-05-24'),
(1, 3, DATE '2020-07-22'),
(2, 4, DATE '2021-02-02'),
(3, 2, DATE '2020-01-05'),
(3, 2, DATE '2020-03-08'),
(3, 2, DATE '2020-05-14'),
(4, 3, DATE '2021-05-04'),
(5, 4, DATE '2021-02-24'),
(6, 2, DATE '2019-12-21'),
(6, 1, DATE '2020-08-10'),
(6, 2, DATE '2021-04-07'),
(7, 3, DATE '2019-09-29'),
(8, 4, DATE '2020-10-03'),
(8, 4, DATE '2020-11-04'),
(9, 2, DATE '2019-01-24'),
(9, 2, DATE '2019-05-15'),
(9, 2, DATE '2020-02-27'),
(9, 2, DATE '2020-08-03'),
(10, 3, DATE '2020-05-24'),
(10, 1, DATE '2021-01-11');

-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';

INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';
