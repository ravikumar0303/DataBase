drop PROCEDURE  in exists hello;
delimiter $
    create PROCEDURE hello()
   begin
   
         select "hello IET" ;
   
   end $
   delimiter ;