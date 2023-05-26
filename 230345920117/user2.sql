drop procedure if exists adduser1;
delimiter $
create procedure adduser1(_name varchar(45),_pwd varchar(15),_email varchar(30))
begin
    declare count int default 0;
	create table if not exists login(username varchar(45),password varchar(15),email varchar(30));
	insert into adduser1 values(_name,_pwd,_email);
	if count >= 1 then
		select username,password from adduser1;
	ELSE	
	   SELECT "User already present";
	
end $
delimiter ;