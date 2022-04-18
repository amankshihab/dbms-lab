create or replace trigger dup_check before insert or update of flight_name on flight_details for each row
declare
    cnt int;
begin

    select count(*) into cnt from flight_details where flight_name=:new.flight_name;

    if cnt > 0 then
        raise_application_error(-20001,'Duplicate flight name');
    end if;
end;
/