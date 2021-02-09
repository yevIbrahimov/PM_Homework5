create function select_note(user_id_input integer)
returns table(id integer, header varchar, body varchar, is_deleted boolean, user_id integer,
             modified_at timestamp with time zone)
as
$$
    select n.id, n.header, n.body, n.is_deleted, n.user_id, n.modified_at
    from notes n
    where n.user_id = user_id_input;
$$
language sql;

