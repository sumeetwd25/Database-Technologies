drop trigger if exists tr3;
delimiter $
create trigger tr3 before insert on dept for each row
begin
declare x int;
select max(deptno)+1 into x from dept;
set new.deptno=x;
end $
delimiter ; 