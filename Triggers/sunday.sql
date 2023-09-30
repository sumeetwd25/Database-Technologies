drop trigger if exists sunday;
delimiter $
create trigger sunday before insert on dept for each row
begin
if dayname(curdate())='Sunday' then
signal sqlstate '42000' set message_text='Invalid day, record cannot be inserted';
end if;
end $
delimiter ;