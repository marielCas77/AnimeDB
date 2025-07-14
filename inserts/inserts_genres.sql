--migrate:up 

INSERT INTO genres (id, name) VALUES (1,'Action');
INSERT INTO genres (id, name) VALUES (2,'Adventure');
INSERT INTO genres (id, name) VALUES (3,'Avant Garde');
INSERT INTO genres (id, name) VALUES (4,'Award Winning');
INSERT INTO genres (id, name) VALUES (5,'Boys Love');
INSERT INTO genres (id, name) VALUES (6,'Comedy');
INSERT INTO genres (id, name) VALUES (7,'Drama');
INSERT INTO genres (id, name) VALUES (8,'Ecchi');
INSERT INTO genres (id, name) VALUES (9,'Erotica');
INSERT INTO genres (id, name) VALUES (10,'Fantasy');
INSERT INTO genres (id, name) VALUES (11,'Girls Love');
INSERT INTO genres (id, name) VALUES (12,'Gourmet');
INSERT INTO genres (id, name) VALUES (13,'Hentai');
INSERT INTO genres (id, name) VALUES (14,'Horror');
INSERT INTO genres (id, name) VALUES (15,'Mystery');
INSERT INTO genres (id, name) VALUES (16,'Romance');
INSERT INTO genres (id, name) VALUES (17,'Sci-Fi');
INSERT INTO genres (id, name) VALUES (18,'Slice of Life');
INSERT INTO genres (id, name) VALUES (19,'Sports');
INSERT INTO genres (id, name) VALUES (20,'Supernatural');
INSERT INTO genres (id, name) VALUES (21,'Suspense');

-- migrate:down 

DELETE FROM genres;