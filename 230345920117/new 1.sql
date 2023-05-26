/*create table if exists login;
create table login;*/

dorp procedure if exists user1;
delimiter $

create procedure user(_name varchar(45),_pwd varchar(45),_email varchar(30))
 begin
 
   create table if not exists login(username varchar(45),password varchar(15),email varchar(30));
   insert into login cvalues(_name,_pwd,_email);
   
   
   select username,password from login;
   
   
   end $
   delimiter ;
