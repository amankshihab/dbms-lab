declare
date_1 date;
date_2 date;
test varchar(20);
begin
    date_1 := '1-JAN-2022';
    date_2 := '2-JAN-2022';

    dbms_output.put_line(date_2 - date_1);
    dbms_output.put_line(MOD(40,30));

    test := 'H' || test_seq.nextval;

    insert into test_table values (test);
end;