--migrate:up 

INSERT INTO watch_status (id, name) VALUES (1,'Watching');
INSERT INTO watch_status (id, name) VALUES (2,'Completed');
INSERT INTO watch_status (id, name) VALUES (3,'On-Hold');
INSERT INTO watch_status (id, name) VALUES (4,'Dropped');
INSERT INTO watch_status (id, name) VALUES (5,'Plan to Watch');

-- migrate:down 

DELETE FROM watch_status;