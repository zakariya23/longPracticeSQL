-- Find Hermione's cats
-- Your code here
SELECT cats.name FROM cats
JOIN cat_owners
ON (cats.id = cat_owners.cat_id)
JOIN owners
ON (cat_owners.owner_id = owners.id)
WHERE owners.first_name = 'Hermione';
-- Find All the Toys for Hermione's cats
-- Your code here
-- SELECT toys.name FROM cats
-- JOIN cat_owners
-- ON (cats.id = cat_owners.cat_id)
-- JOIN owners
-- ON (cat_owners.owner_id = owners.id)
-- JOIN toys
-- ON (toys.cat_id = cats.id)
-- WHERE owners.first_name = 'Hermione';


SELECT toys.name FROM cat_owners
JOIN owners
ON (owners.id = cat_owners.owner_id)
JOIN toys
ON (toys.cat_id = cat_owners.cat_id)
WHERE owners.first_name = 'Hermione';
