create table if not exists playlist (
    user_id integer not null references user(rowid),
    name text not null
);
