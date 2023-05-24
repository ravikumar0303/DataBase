
delimiter $
    create PROCEDURE con1()
	declare x int;
	set x :=0;
   begin
         lbl : loop
		      set x = x+1;
         SELECT x;
		 if x>10 THENleave lbl;
		 end if $;
		 end loop lbl;
   
   end $
   delimiter ;