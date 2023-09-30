drop table if exists insertStudent;
create table insertStudent(name varchar(20));

drop table if exists LOG;
create table LOG(message varchar(50));

drop trigger if exists insertStudent;
delimiter $
create trigger insertStudent after insert on insertStudent for each row
begin
insert into LOG values('Record inserted successfully');
end $
delimiter ;