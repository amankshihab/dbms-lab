accept user_den number prompt 'Enter the user_id'
declare
cursor lib_cursor is select * from book_transanction where user_id=user_den and transanction_type='BW';
diff_date int;
penalty int;
begin
    if lib_cursor%rowcount > 0 then
        for record in lib_cursor loop

            diff_date := sysdate - record.transanction_date;

            case
                when diff_date <= 15 then
                    penalty := 0;
                when diff_date between 16 and 50 then
                    penalty := diff_date * 1;
                when diff_date between 51 and 100 then
                    penalty := diff_date * 2;
                when diff_date between 101 and 300 then
                    penalty := diff_date * 3;
                when diff_date > 300 then
                    penalty := diff_date * 5;
            end case;

            dbms_output.put_line('Penalty for ' || user_id || ' is ' || penalty);

        end loop;
    end if;
end;
/