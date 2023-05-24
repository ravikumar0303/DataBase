drop PROCEDURE if EXISTS pro1;
delimiter $
CREATE PROCEDURE pro1(name varchar(40))
BEGIN
DECLARE x int;
DECLARE b varchar(40);
set x:=1;
set b:="";
lbl:LOOP
SELECT concat(b,SUBSTR(name,x,1),',');
set x:= x + 1;
if (x>length(name))THEN

leave lbl;
end if;
end loop lbl;
end $
delimiter ;
