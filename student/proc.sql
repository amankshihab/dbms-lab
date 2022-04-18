declare
cursor stud_cursor is select * from student;
tot_marks float;
grd varchar(20);
begin
    for record in stud_cursor loop
        
        tot_marks := record.mark1 + record.mark2 + record.mark3;

        case
            when tot_marks < 40 then
                grd := 'Failed';
            when tot_marks >= 40 and tot_marks < 60 then
                grd := 'Second Class';
            when tot_marks >= 60 and tot_marks < 80 then
                grd := 'First Class';
            when tot_marks >= 80 then
                grd := 'Distinction';
        end case;

        update student set total_marks = tot_marks, grade = grd where roll_no = record.roll_no;
    
    end loop;
end;
/