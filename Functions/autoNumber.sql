drop table if exists STUDENT_NEW;
create table STUDENT_NEW (studentID int auto_increment primary key, namefirst varchar(20), namelast varchar(20),DOB date, emailID varchar(50));

drop function if exists autoNumber;
delimiter $
create function autoNumber() returns int
begin
declare x int;
insert into STUDENT_NEW values (default  , 'John' , 'Wick' ,'1990-01-30', 'johnwick@gmail.com');
return x;
end $
delimiter ;