create or replace procedure res_proc(temp1 IN int) as
begin
    dbms_output.put_line(temp1);
end;
/

select fda.flight_no, fd.flight_name from flight_details fd, flight_data fda where fd.flight_no=fda.flight_no and fda.ticket_fare in (select max(ticket_fare) from flight_data);