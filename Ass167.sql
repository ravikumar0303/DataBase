drop PROCEDURE if EXISTS ass167;
 delimiter $
 
  CREATE PROCEDURE ass167( )
  DECLARE 
    n NUMBER :=10;
  BEGIN
    for i IN 1..n loop
    if mod(i,2) = 0 THEN
	
	 SELECT (n||'i is even');
	 
	 else 
	  select (n||'i is odd');
	  
	  end if;
	  end loop;
	  end $
   delimiter ;
  
  /*set x:=1;
  
  BEGIN
   lbl:LOOP
        
  set x:= x + 1;
  if mod(i,2):=0 THEN
  SELECT x "i is even";
  leave lbl;
  end if;
  end loop;*/
  
   