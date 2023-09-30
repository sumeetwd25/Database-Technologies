	drop table if exists login;
	
	create table login(username varchar(20) ,password varchar(20) ,email varchar(20));
	drop procedure if exists addUser;
	delimiter $
	create procedure adduser(username varchar(20) ,password varchar(20) ,email varchar(20))
	BEGIN
	insert into Login values(username,password,email);
	end $
	delimiter ;
	