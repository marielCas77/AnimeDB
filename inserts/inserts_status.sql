--migrate:up 

INSERT INTO status (id, name) VALUES (1,'Currently Airing');
INSERT INTO status (id, name) VALUES (2,'Finished Airing');
INSERT INTO status (id, name) VALUES (3,'Not yet aired');

-- migrate:down 

DELETE FROM status;