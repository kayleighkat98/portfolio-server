/*

SELECT ALL PROJECTS IN ALPHABETICAL ORDER:
SELECT * FROM project ORDER BY name ASC;

~~~~~~~~

SELECT ALL PROJECTS THAT MATCH TEAM SIZE QUERY:
SELECT * FROM project WHERE team_size= (query);

~~~~~~~~

SELECT PROJECT BY NAME:
SELECT * FROM project WHERE name ILIKE (query);

~~~~~~~~

SELECT ALL PROJECTS WITH STACK TYPE:
SELECT * FROM project WHERE stack ILIKE (query);

~~~~~~~~

UPDATE TEXT OF PROJECT BY ID AND COLUMN NAME:
UPDATE project SET (column_name) = (input) WHERE id = (query);

~~~~~~~~


~~~~~~~~

DELETE PROJECT BY ID:
delete FROM project WHERE id = (query);

~~~~~~~~
*/