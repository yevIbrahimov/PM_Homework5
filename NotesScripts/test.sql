select * from add_user('a1', 'b1');
select * from add_user('a2', 'b2');

select * from add_note(uuid_generate_v1(), 'header1', 'body1', 4);
select * from add_note(uuid_generate_v1(), 'header2', 'body2', 4);
select * from add_note(uuid_generate_v1(), 'header3', 'body3', 4);
select * from add_note(uuid_generate_v1(), 'header4', 'body4', 5);
select * from add_note(uuid_generate_v1(), 'header5', 'body5', 5);
select * from add_note(uuid_generate_v1(), 'header6', 'body6', 5);

select * from select_note('c5b4e6d4-5e7e-11eb-82fe-0242ac110002');
select * from select_note('c7f1fc5c-5e7e-11eb-82fe-0242ac110002');

select * from mark_note_as_deleted('c7f1fc5c-5e7e-11eb-82fe-0242ac110002');
select * from mark_note_as_deleted('15b4fc96-5e7f-11eb-82fe-0242ac110002');

select * from select_notes_count();

select * from select_note(4);
select * from select_note(5);