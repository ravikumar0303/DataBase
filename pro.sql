/* drop procedure if exists pro;
 delimiter $
 CREATE procedure pro1(in _deptno int)
BEGIN
	declare flag bool default false;
	select DISTINCT true into flag  from emp where deptno = _deptno;
	if flag then
		select empno, ename, job, hiredate, sal, deptno from emp where deptno = _deptno;
	ELSE
		select "Employee Not found";
	end if;
end $ 
delimiter ; 



 delimiter %
CREATE procedure pro( )
BEGIN
	declare _empno, _sal, _deptno int;
	declare _ename, _job varchar(40);
	declare _hiredate date;
	
	declare c1 cursor for select empno, ename, job, hiredate, sal, deptno from emp where deptno ;
	
	declare exit handler for 1329 select "No more recprds to fetch";
	
	open c1;
		lbl:loop
			fetch c1 into _empno, _ename, _job, _hiredate,  _sal, _deptno;
				select _empno, _ename, _job, _hiredate,  _sal, _deptno;
			end loop lbl;
	close c1;
end %
delimiter ; */



drop trigger if exists pro;
delimiter $
create trigger pro after INSERT on dept for each ROW
BEGIN
	insert into d values(new.deptno, new.dname, new.loc, new.pwd, new.startedon);
end $
delimiter ;
