insert into "user" (name) values ('alice');
insert into "user" (name) values ('bob');
insert into "user" (name) values ('charlIE');

insert into playlist (user_id, name) values (1, 'alice playlist');
insert into playlist (user_id, name) values (2, 'bob Tunes');
insert into playlist (user_id, name) values (3, 'charlie favorites');

insert into track (name, artist) values ('track one', 'artist a');
insert into track (name, artist) values ('TRACK TWO', 'artist b');
insert into track (name, artist) values ('track three', 'artist c');

insert into playlist_track (playlist_id, track_id) values (1, 1);
insert into playlist_track (playlist_id, track_id) values (1, 2);
insert into playlist_track (playlist_id, track_id) values (2, 3);
insert into playlist_track (playlist_id, track_id) values (3, 1);
insert into playlist_track (playlist_id, track_id) values (3, 3);
