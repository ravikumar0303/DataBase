drop procedure if exists pr1;
delimiter $
create procedure pr1()
begin 
declare ee varchar(20) default '';
declare r cursor for select ename from emp;
declare exit handler for 1329 select "no more row";
open r;
lbl:loop
fetch r into ee;
select ee;
end loop lbl;
close r;
end $
delimiter ;