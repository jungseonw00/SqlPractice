-- nvl�� �Լ��� ���� Į���� null ���ϰ�� ������ ������ �����Ѵ�.
select sal, comm, sal + nvl(comm, 0) as ���� from emp;
-- �� �߿� �� ���Ǹ� �ش��ϸ� select �ϴ� ������.
select * from emp where deptno = 10 or job = 'MANAGER';
-- �ݴ�Ǵ� ������ ���ϴ� ������.
select * from emp where not deptno = 10;
select * from emp where sal between 1000 and 1500;
-- Ư�� Į���� ���� �ϳ��� ��ġ�ϸ� ���� �Ǵ� ������
select * from emp where comm in(300, 500, 1400);
-- F�ڿ� ������ �͵� �����ٴ� �ǹ�.
select * from emp where ename like 'F%';
select * from emp where ename like '%M%';
select * from emp where ename like '%N';
select * from emp where ename like '_A%';
select * from emp where ename like '__A%';
-- ename�� A�� �ȵ��� �͸� ���
select * from emp where ename not like '%A%';
-- null �� Į���� ��ȸ�ϱ� ���� is null. (=���δ� Ȯ���� �� ����.)
select * from emp where comm is null;
select * from emp where comm is not null;

--ȥ�� �غ���
select sal, sal+300 as �޿��λ� from emp;
select ename, sal, sal * 12 + 100 as �����Ѽ��� from emp order by �����Ѽ��� desc;
select ename, sal from emp where sal > 2000 order by sal desc;
select ename, deptno from emp where deptno = 20;
-- �ٽú���
select ename, sal from emp where sal not between  2000 and 3000;
select ename, job, hiredate from emp where hiredate between '81/02/20' and '81/05/01';
select ename, deptno from emp where deptno in(20, 30) order by ename asc;
-- �ٽú���
select ename, sal, deptno from emp where sal between 2000 and 3000 and deptno in(20, 30) order by ename asc;
select ename, hiredate from emp where hiredate between '1981/01/01' and '1981/12/31';
select ename, hiredate from emp where hiredate like '81%';
select ename, job from emp where mgr is null;
select ename, sal, comm from emp where comm is not null and comm != 0;
select * from emp where ename like '__R%';
select * from emp where ename like '%A%' and ename not like '%E%';
select * from emp where job in ('CLERK', 'SALESMAN') and sal not in(950, 1300, 1600);
select * from emp where comm >= 500;