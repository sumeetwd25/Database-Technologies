drop function if exists f10;
delimiter $
create function f10(curr_date date, curr_time time, message varchar(40)) returns varchar(40)
begin 
declare x varchar(40);
insert into log values(curr_date, curr_time, message)  ;
return x;
end $
delimiter ;