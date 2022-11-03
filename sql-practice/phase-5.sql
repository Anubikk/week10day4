-- Find the first owner that has a last name containing the lowercase letter "r"
SELECT * FROM owners WHERE last_name LIKE "%r%";

-- Find the name and birth year of all the cats ordered by descending birth year
SELECT name, birth_year FROM cats ORDER BY birth_year DESC;

-- Find the name of the cats who have an owner whose first name begins with an "H"

SELECT owners.first_name owner_name, cats.name cat_name FROM cat_owners --can assign custom headers
JOIN owners ON owners.id = cat_owners.owner_id
JOIN cats ON cats.id = cat_owners.cat_id
WHERE owners.first_name LIKE "h%";

-- Find the first and last names of the owner whose cats are born after the year 2015

SELECT owners.first_name, owners.last_name, cats.birth_year FROM cat_owners
JOIN owners ON owners.id = cat_owners.owner_id
JOIN cats ON cats.id = cat_owners.cat_id
WHERE cats.birth_year > 2015;

-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
SELECT owners.first_name, owners.last_name, cats.birth_year FROM cat_owners
JOIN owners ON owners.id = cat_owners.owner_id
JOIN cats ON cats.id = cat_owners.cat_id
WHERE owners.first_name = "George"  owners.last_name LIKE ""
