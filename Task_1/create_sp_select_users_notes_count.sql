create function select_notes_count(user_id_input integer)
returns table(id integer, first_name varchar, last_name varchar, count bigint)
as
$$
    select users.id, users.first_name, users.last_name,
           (select count(*) from notes where notes.is_deleted = false and notes.user_id = users.id)
    from users
    where id = user_id_input;
$$
language sql;

