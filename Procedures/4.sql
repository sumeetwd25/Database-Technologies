drop procedure if exists addStudent;
delimiter $
create procedure addStudent()
begin  
insert into student(id,namefirst,namelast) values(50,'sumeet','wadile');
insert
end $
delimiter ;