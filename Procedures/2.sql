drop table if exists log;
create table log(id int auto_increment primary key, curr_date date , curr_time time ,message varchar(40));

drop procedure if exists checkuser;
delimiter $
create procedure checkuser(x varchar(20))
BEGIN
declare y bit;
set @y:=0;
if(select x in (select email from login)r1 ) then
set @y:=1;
end if;
if @y THEN
select username,password from login where login.email=x;
else 
select f10();
end if;
end $
delimiter ;