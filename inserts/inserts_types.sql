--migrate:up 

INSERT INTO types (id, name) VALUES (1,'Movie');
INSERT INTO types (id, name) VALUES (2,'Music');
INSERT INTO types (id, name) VALUES (3,'ONA');
INSERT INTO types (id, name) VALUES (4,'OVA');
INSERT INTO types (id, name) VALUES (5,'Special');
INSERT INTO types (id, name) VALUES (6,'TV');

-- migrate:down 

DELETE FROM types;