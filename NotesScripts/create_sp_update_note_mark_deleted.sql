create function mark_note_as_deleted(note_id uuid)
returns void
as
$$
    update notes set is_deleted = true, modified_at = current_timestamp(5)
    where id = note_id;
$$
language sql;

