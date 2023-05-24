 DROP procedure if EXISTS st1;
 delimiter $
 create procedure st1()
 
 begin
 
        SELECT substr('qwertyu',2,1); 
 
 end $
 delimiter ;