--migrate:up 

INSERT INTO seasons (id, name) VALUES (1,'fall');
INSERT INTO seasons (id, name) VALUES (2,'spring');
INSERT INTO seasons (id, name) VALUES (3,'winter');
INSERT INTO seasons (id, name) VALUES (4,'summer');

-- migrate:down 

DELETE FROM seasons;