 delimiter %
 Declare
c1 Number:=1;
c2 Varchar2(5);
begin
for c1 in 1..5
loop
select substr('Hello' , c1 , 1 ) into c2 from dual;
dbms_output.put_line(c2);
end LOOP;
end %
 delimiter;