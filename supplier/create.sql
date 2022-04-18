create table supplier_details (sup_code varchar(5) primary key not null, sup_name varchar(20), addr varchar(30), state varchar(20));

create table item_details (item_code varchar(10) primary key not null, item_name varchar(20), item_rate float, item_tax_per float, item_type varchar(20));

create table purchase_details (sup_code references supplier_details, item_code references item_details, item_qty int, item_rate float, item_tax_per float, sup_date date);