DROP procedure if EXISTS str2;
delimiter $

create procedure str2(IN_string in VARCHAR2)
DECLARE 
  
  
 begin
     
	 v_length := length(IN_string);
	 for i in 1.. v_length Loop v_out := substr(IN_string,i,1);
     
 
    end loop;
 end $
 delimiter ;
 
 
 
 
 
 