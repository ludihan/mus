create table if not exists playlist_track (
    playlist_id integer not null references playlist(rowid),
    track_id integer not null references track(rowid)
);
