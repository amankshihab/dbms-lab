create or replace trigger experience_trigger after update of experience on employee_details for each row when (new.experience > 15)
begin
    insert into promotion_details values (:old.e_no, :old.e_name, :old.dept_no, 'Sr.'||:old.designation, 1.1*:old.salary);
end;