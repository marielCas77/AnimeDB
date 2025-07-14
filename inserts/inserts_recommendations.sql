--migrate:up 

INSERT INTO recommendations (id, name) VALUES (1,'Recommended');
INSERT INTO recommendations (id, name) VALUES (2,'Mixed Feelings');
INSERT INTO recommendations (id, name) VALUES (3,'Not Recommended');

-- migrate:down 

DELETE FROM recommendations;