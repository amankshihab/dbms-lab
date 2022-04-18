create or replace procedure tax_proc as
yearly_sal int;
amount_exceeded int;
cursor employee_cursor is select * from employee_details;
begin
    for i in employee_cursor loop
        
        yearly_sal := i.salary * 12;
        
        if yearly_sal < 100000 then
            insert into tax_details values (i.e_no, i.dept_no, 0.0);
        elsif yearly_sal < 100000 and yearly_sal <= 150000 then
            amount_exceeded := yearly_sal - 100000;
            insert into tax_details values (i.e_no, i.dept_no, 0.1*amount_exceeded);
        elsif yearly_sal < 150000 and yearly_sal <= 200000 then
            amount_exceeded := yearly_sal - 100000;
            insert into tax_details values (i.e_no, i.dept_no, 0.2*amount_exceeded);
        elsif yearly_sal > 200000 then
            amount_exceeded := yearly_sal - 100000;
            insert into tax_details values (i.e_no, i.dept_no, 0.3*amount_exceeded);
        end if;

    end loop;
end;
/