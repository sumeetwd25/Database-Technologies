drop trigger if exists tr2;
delimiter $
create trigger tr2 after delete on dept for each row
begin
insert into d values (old.deptno, old.dname, old.loc, old.pwd, old.startedon);
end $
delimiter ;