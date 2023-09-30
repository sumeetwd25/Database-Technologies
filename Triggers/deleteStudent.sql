drop table if exists STUDENT_LOG;
create table STUDENT_LOG(id int, namefirst varchar(20), namelast varchar(20), dob date, emailid varchar(50));

drop trigger if exists deleteStudent;
delimiter $
create trigger deleteStudent after delete on student for each row
begin
insert into STUDENT_LOG values (old.id, old.namefirst, old.namelast, old.dob, old.emailid);
end $
delimiter ;