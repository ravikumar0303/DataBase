drop procedure if exists pr1;
/* delimiter $
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
delimiter ; */



 delimiter %
CREATE procedure pro2(y int);
 begin 
     declare _empno, _sal, _deptno int;
	 declare _ename, _job varchar(45);
	 declare _hiredate date;
	 
     declare c1 cursor for select empno, ename, job, hiredate, sal, deptno from emp;
	 
	 open c2;
	 lbl:loop
			fetch c1 into _empno, _ename, _job, _hiredate,  _sal, _deptno;
			
				select _empno, _ename, _job, _hiredate,  _sal, _deptno;
			end if;
		end loop lbl;
	 
	 
	 CLOSE c2;


end %
delimiter ;