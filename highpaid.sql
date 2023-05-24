/*
⦁	Write a procedure to print five highest
 paid employees from the emp table using cursor.
*/
drop procedure if exists pro;
delimiter !
create procedure pro()
begin
declare _ename varchar(20);
declare _sal int;

DECLARE ravi cursor for select ename,sal from emp order by sal desc limit 5;
open ravi;
tiger: loop
fetch ravi into  _ename ,_sal ;
select _ename,_sal;

end loop tiger;
close ravi;
end !
delimiter ;