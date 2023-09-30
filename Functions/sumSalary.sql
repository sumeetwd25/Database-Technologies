drop function if exists sumSalary;
delimiter $
create function sumSalary(x int) returns int

begin
declare sum int;
select sum(sal) into sum from emp where deptno=x;
return sum;
end $
delimiter ;