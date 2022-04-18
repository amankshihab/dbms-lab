create or replace trigger consumer_trigger before insert or update on consumer_reading for each row
begin
    if :old.old_reading > :new.current_reading then
        raise_application_error(-20001, 'Old reading greater than new reading');
    elsif (:new.current_reading-:old.old_reading) > 1000 then
        raise_application_error(-20002, 'Difference greater than 1000');
    end if;
end;
/