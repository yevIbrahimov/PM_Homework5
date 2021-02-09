create function select_note(note_id uuid)
returns table(id uuid, header varchar, body varchar, is_deleted boolean, user_id integer,
             modified_at timestamp with time zone, first_name varchar, last_name varchar)
as
$$
    select n.id, n.header, n.body, n.is_deleted, n.user_id, n.modified_at,
           u.first_name, u.last_name
    from notes n
    inner join users u on u.id = n.user_id
    where n.id = note_id;
$$
language sql;

