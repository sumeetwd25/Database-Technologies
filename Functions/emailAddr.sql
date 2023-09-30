drop function if exists emailAddr;
delimiter $
create function emailAddr(emailid varchar (40)) returns VARCHAR (40)
begin
declare x varchar(40);
if(select emailid in (select email from login) ) then 
select CONCAT('Username:',username,' ','Password:',password) into x from login where login.email=emailid;
RETURN x;
else
select "Employee not exists" into x;
RETURN x;
end if;
end $
delimiter ;