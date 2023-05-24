drop PROCEDURE if EXISTS str3;
 delimiter $
  CREATE PROCEDURE str3(strname VARCHAR(45))
   BEGIN
  DECLARE a int;
  declare b VARCHAR(45);
  
   set a:= 1;
   set b:="";
   lbl:loop 		
     
     SELECT SUBSTR (strname,a,1,",");
       set a:= a + 1;
    if a>LENGTH(strname) THEN
    leave lbl;
	end if;	
	end loop lbl;
	end $
	delimiter ;