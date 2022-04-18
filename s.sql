create or replace procedure reservation as
begin
    select * from flight_details where flight_no=&flight_no;
end;
/