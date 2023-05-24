drop PROCEDURE if EXISTS pro2;
delimiter $
CREATE PROCEDURE pro2( name varchar(40))
BEGIN
DECLARE x int;
set x:=1;
 lbl: LOOP
  SELECT SUBSTR (name,x,2);
set x:= x + 1;
  if x>length(name) THEN

leave lbl;
end if;
end loop lbl;
end $
delimiter ;
