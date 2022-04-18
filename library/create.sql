create table library_master (user_id int primary key not null, user_name varchar(20), user_address varchar(30), designation varchar(10), department varchar(20) check(department in ('CSE', 'CE', 'ME', 'EC')));

create table book_transanction (transanction_no int primary key not null, user_id references library_master, transanction_date date, book_id varchar(10), transanction_type varchar(2) check (transanction_type in ('RT', 'BW')));

create table book_penalty (user_id references library_master, transanction_no_1 references book_transanction, transanction_no_2 references book_transanction, total float);