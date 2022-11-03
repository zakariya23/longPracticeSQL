-- Update the toy with the name of "Cheetos" to have a name of "Pooky"
-- Your code here





UPDATE toys
SET name = 'Pooky'
WHERE name IN (
    SELECT toys.name FROM toys
JOIN cat_owners
ON (toys.cat_id = cat_owners.cat_id)
JOIN cats
ON(toys.cat_id = cats.id)
WHERE toys.name = 'Cheetos' AND cats.name = 'Garfield'
);


SELECT * FROM toys
JOIN cat_owners
ON (toys.cat_id = cat_owners.cat_id)
JOIN cats
ON(toys.cat_id = cats.id)
WHERE toys.name = 'Cheetos' AND cats.name = 'Garfield';
