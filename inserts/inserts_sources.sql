--migrate:up 

INSERT INTO sources (id, name) VALUES (1,'4-koma manga');
INSERT INTO sources (id, name) VALUES (2,'Book');
INSERT INTO sources (id, name) VALUES (3,'Card game');
INSERT INTO sources (id, name) VALUES (4,'Game');
INSERT INTO sources (id, name) VALUES (5,'Light novel');
INSERT INTO sources (id, name) VALUES (6,'Manga');
INSERT INTO sources (id, name) VALUES (7,'Mixed media');
INSERT INTO sources (id, name) VALUES (8,'Music');
INSERT INTO sources (id, name) VALUES (9,'Novel');
INSERT INTO sources (id, name) VALUES (10,'Original');
INSERT INTO sources (id, name) VALUES (11,'Other');
INSERT INTO sources (id, name) VALUES (12,'Picture book');
INSERT INTO sources (id, name) VALUES (13,'Radio');
INSERT INTO sources (id, name) VALUES (14,'Visual novel');
INSERT INTO sources (id, name) VALUES (15,'Web manga');
INSERT INTO sources (id, name) VALUES (16,'Web novel');

-- migrate:down 

DELETE FROM sources;