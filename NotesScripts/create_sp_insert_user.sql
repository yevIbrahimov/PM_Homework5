create function add_user(first_name varchar(128), last_name varchar(128))
returns void as
$$
    insert into users (first_name, last_name)  values (first_name, last_name);
$$
language sql;

