drop trigger if exists tr4;
delimiter $
create trigger tr4 before insert on dept for each row
begin
if dayname(curdate())='Wednesday' then
signal sqlstate '42000' set message_text='Invalid day, record cannot be inserted';
end if;
end $
delimiter ;