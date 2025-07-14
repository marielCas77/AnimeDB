--migrate:up 

INSERT INTO clasifications (id, name) VALUES (1,'G - All Ages');
INSERT INTO clasifications (id, name) VALUES (2,'PG - Children');
INSERT INTO clasifications (id, name) VALUES (3,'PG-13 - Teens 13 or older');
INSERT INTO clasifications (id, name) VALUES (4,'R - 17+ (violence & profanity)');
INSERT INTO clasifications (id, name) VALUES (5,'R+ - Mild Nudity');
INSERT INTO clasifications (id, name) VALUES (6,'Rx - Hentai');

-- migrate:down 

DELETE FROM clasifications;