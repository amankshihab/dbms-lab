create or replace procedure generate_bill as
diff float;
amount float;
cursor reading_cursor is select * from consumer_reading;
begin
    for record in reading_cursor loop
        diff := record.current_reading - record.old_reading;

        if diff < 50 then
            amount := diff * 5;
        elsif diff >= 50 and diff < 100 then
            amount := diff * 7;
        elsif diff >= 100 and diff < 300 then
            amount := diff * 12;
        elsif diff >= 300 then
            amount := diff * 15;
        end if;

        insert into consumer_bill values (record.bill_no, amount);
    end loop;
end;
/