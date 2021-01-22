create table Notes(
    id uuid primary key ,
    header  varchar(128) not null,
    body  varchar(1024) not null,
    is_deleted boolean default false not null,
    user_id integer references users(id),
    modified_at timestamp with time zone not null default current_timestamp(5)
);
create index notes_modified_at_index on Notes (modified_at);
