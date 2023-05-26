drop procedure if exists seclog;
delimiter $
create procedure seclog(_email varchar(20))
begin
	declare count int default 0;
	create table if not exists login(username varchar(25),password varchar(20),email varchar(20));
	create table if not exists log(id int auto_increment, curr_time time, curr_date date,message varchar(100));
	select count(email) into count from login where email=_email;
	if count >= 1 then
		select username,password from login;
	else
		select "not found user";
		insert into log(curr_date,curr_time,message) values(curtime(),curdate(),concat(_email," was searched "));
	end if;
end $
delimiter ;