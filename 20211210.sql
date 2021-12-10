-- ���� ���ϱ� 
select lengthb('OracleMania') from dual;

-- concat�� Į���� ���ڿ��� �����Ѵ�.
select empno, ename, concat(empno, ename) from emp;

-- ���ڿ��� �����Ѵ�.
select substr('Oracle Mania', 4, 3) from dual;

-- �̸��� n���� ������ ��� ǥ���ϱ� ( �� �� �Ȱ��� ����� ��Ÿ��)
select * from emp where substr(ename, -1, 1) = 'N';
select * from emp where ename like '%N';

select * from emp where substr(hiredate, 1, 5) = '81/02';

-- ���ڿ� ��ġ ���
select instr('Oracle mania', 'a') from dual;

-- �ڸ��� Ư�� ��ȣ�� ä���
select substr(LPAD(sal, 10, '*'), 7, 4) from emp;
select RPAD(sal, 10, '*') from emp;

-- ���� ����
select Trim(' Oracle mania ') from dual;

-- ���� ����
select hiredate, trunc(hiredate, 'MONTH') from emp;

select ename, sysdate, hiredate, trunc(months_between (sysdate, hiredate)) from emp;

select ename, hiredate, add_months(hiredate, 6) "6������������" from emp;

-- ����ȯ �Լ� to_char, to_date, to_number �� ������ �ִ�.
-- to_char�� ����/��¥ --> ���ڿ� 
select ename, hiredate, to_char(hiredate, 'YY-MM'), to_char(hiredate, 'YY-MM-DD'), to_char(hiredate, 'YYYY-MM-DD HH12:MM:SS') from emp;

-- to_date 
select ename, hiredate from emp where hiredate = to_date(19810220, 'YYMMDD');

select to_number('100,000', '999,999') - to_number('50,000', '999,999') from dual;

