drop function if exists sumMarks;
delimiter $
create function sumMarks(_studentID int) returns int
begin
declare x int;
select sum(marks) into x from student_qualifications where studentID=_studentID group by studentID;
RETURN x;
end $
delimiter ;