-- create sequence stud_seq start with 1 increment by 1 MAXVALUE 60 NOCYCLE;

create table student (roll_no int primary key not null, s_name varchar(20), class varchar(1), mark1 float, mark2 float, mark3 float, total_marks float, grade varchar(20));