drop trigger if exists tr1;
delimiter $
create trigger tr1 before insert on dept for each ROW
BEGIN
	if dayname(curdate()) = 'Thursday' THEN
		SIGNAL SQLSTATE '42000' SET MESSAGE_TEXT = 'Invalid Day, Record cannot be inserted';
	end if;
end $
delimiter ;
