create table author (author_id varchar(5) primary key not null, name varchar(20), email varchar(20), phone_number varchar(10), status varchar(10));

create table publisher (publisher_id varchar(5) primary key not null, name varchar(20), address varchar(40));

create table member (member_id varchar(5) primary key not null, name varchar(20), branch_code varchar(5), roll_no int, phone_number varchar(10), email_id varchar(20), date_of_join date, status varchar(20));

create table language (language_id varchar(5) primary key not null, name varchar(20));

create table book (book_id varchar(5) primary key not null, title varchar(20), language_id references language, mrp float, publisher_id references publisher, published_date date, volume int, status varchar(10));

create table book_author (book_id references book, author_id references author, primary key(book_id, author_id));

create table book_issue (issue_id varchar(5) primary key not null, date_of_issue date, book_id references book, member_id references member, expected_date_of_return date, status varchar(10));

create table book_return (issue_id references book_issue, actual_date_of_return date, latedays int, latefee float, primary key(issue_id));

create table late_fee_rule (fromdays int, todays int, amount float, primary key(fromdays, todays));