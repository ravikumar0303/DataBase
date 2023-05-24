delimiter %
 create PROCEDURE pc1(_deptno int)
  begin
     SELECT ename,empno,job,hiredate,sal,deptno fromk emp where deptno=_deptno;
  end %
  delimiter ;