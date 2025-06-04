INSERT INTO "user" (name) VALUES ('alice'), ('bob'), ('charlIE');
INSERT INTO playlist (user_id, name) VALUES (1, 'alice playlist'), (2, 'bob Tunes'), (3, 'charlie favorites');
INSERT INTO track (name, artist) VALUES ('track one', 'artist a'), ('TRACK TWO', 'artist b'), ('track three', 'artist c');
INSERT INTO playlist_track VALUES (1, 1), (1, 2), (2, 3), (3, 1), (3, 3);
