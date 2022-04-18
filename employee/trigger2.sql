create or replace trigger employee_details_update after insert on promotion_details
begin
    update employee_details set salary=:new.new_salary where e_no=:new.e_no;
end;
/