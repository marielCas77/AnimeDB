--migrate:up 

INSERT INTO genders (id, name) VALUES (1,'Female');
INSERT INTO genders (id, name) VALUES (2,'Male');
INSERT INTO genders (id, name) VALUES (3,'Non-Binary');

-- migrate:down 

DELETE FROM genders;