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
