drop PROCEDURE if EXISTS ass126;
 delimiter $
 
  CREATE PROCEDURE ass126()
  BEGIN
     
	  DECLARE _empno,_sal,_deptno int;
	  DECLARE _ename,_job VARCHAR(45);
	 
	 
	 DECLARE c1 CURSOR for SELECT ename,job,empno,sal,deptno from emp;
	 DECLARE exit handler for 1329 SELECT "no record";
	 
	 OPEN c1;
	   lbl:LOOP
	    fetch c1 into _ename,_job,_empno,_sal,_deptno;
		
		SELECT _ename,_job,_empno,_sal,_deptno;
		
		end loop lbl;
		CLOSE c1;
  
  end $
  delimiter ;