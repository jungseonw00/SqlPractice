-- nvl의 함수는 왼쪽 칼럼이 null 값일경우 오른쪽 값으로 설정한다.
select sal, comm, sal + nvl(comm, 0) as 연봉 from emp;
-- 둘 중에 한 조건만 해당하면 select 하는 연산자.
select * from emp where deptno = 10 or job = 'MANAGER';
-- 반대되는 논리값을 구하는 연산자.
select * from emp where not deptno = 10;
select * from emp where sal between 1000 and 1500;
-- 특정 칼럼의 값이 하나라도 일치하면 참이 되는 연산자
select * from emp where comm in(300, 500, 1400);
-- F뒤에 무엇이 와도 괜찮다는 의미.
select * from emp where ename like 'F%';
select * from emp where ename like '%M%';
select * from emp where ename like '%N';
select * from emp where ename like '_A%';
select * from emp where ename like '__A%';
-- ename에 A가 안들어가는 것만 출력
select * from emp where ename not like '%A%';
-- null 인 칼럼을 조회하기 위한 is null. (=으로는 확인할 수 없다.)
select * from emp where comm is null;
