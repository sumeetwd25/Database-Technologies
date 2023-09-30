drop table if exists STUDENT_LOG;
create table STUDENT_LOG(id int, namefirst varchar(20), namelast varchar(20), dob date, emailid varchar(50));

drop trigger if exists insertDuplicate;
delimiter $
create trigger insertDuplicate after insert on student for each row
begin
insert into STUDENT_LOG values (new.id, new.namefirst, new.namelast, new.dob, new.emailid);
end $
delimiter ;