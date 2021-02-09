create function add_note (id uuid, header varchar(128), body varchar(1024), user_id integer)
returns void as
$$
insert into notes (id, header, body, user_id) values (id, header, body, user_id);
$$
language sql;

