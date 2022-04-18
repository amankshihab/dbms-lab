create sequence cons_seq start with 100 increment by 1 NOCYCLE;

create table consumer_master (consumer_no int NOT NULL PRIMARY KEY, consumer_name varchar(20), consumer_address varchar(50), meter_no int unique not null, city varchar(3) check(city in ('TVM', 'COC', 'KZK', 'KTM')));

create table consumer_reading (bill_no int not null primary key, consumer_no references consumer_master, old_reading float, current_reading float);

create table consumer_bill (bill_no references consumer_reading, total_amount float);