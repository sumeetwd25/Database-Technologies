drop table if exists STUDENT_LOG;
create table STUDENT_LOG(id int, namefirst varchar(20), namelast varchar(20), dob date, emailid varchar(50));

drop trigger if exists updateStudent;
delimiter $
create trigger updateStudent after update on student for each row
begin
if(old.namefirst <> new.namefirst||old.namelast <> new.namelast) then
insert into STUDENT_LOG values(old.id, new.namefirst, new.namelast, old.dob, old.emailid );
end if;
end $
delimiter ;