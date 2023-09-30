drop procedure if exists getQualification;
delimiter $
create procedure getQualification (_studentID int)
begin
if(select _studentID in (select ID from student)) then
select * from student,student_qualifications where student.ID=_studentID and student.ID=student_qualifications.studentID;
else
select 'Student not found';
end if;
end $
delimiter ;