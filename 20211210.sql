-- 길이 구하기 
select lengthb('OracleMania') from dual;

-- concat은 칼럼의 문자열을 결합한다.
select empno, ename, concat(empno, ename) from emp;

-- 문자열을 추출한다.
select substr('Oracle Mania', 4, 3) from dual;

-- 이름이 n으로 끝나는 사원 표시하기 ( 둘 다 똑같은 결과를 나타냄)
select * from emp where substr(ename, -1, 1) = 'N';
select * from emp where ename like '%N';

select * from emp where substr(hiredate, 1, 5) = '81/02';

-- 문자열 위치 출력
select instr('Oracle mania', 'a') from dual;

-- 자리를 특성 기호로 채우기
select substr(LPAD(sal, 10, '*'), 7, 4) from emp;
select RPAD(sal, 10, '*') from emp;

-- 공백 제거
select Trim(' Oracle mania ') from dual;

-- 일자 버림
select hiredate, trunc(hiredate, 'MONTH') from emp;

select ename, sysdate, hiredate, trunc(months_between (sysdate, hiredate)) from emp;

select ename, hiredate, add_months(hiredate, 6) "6개월지난시점" from emp;

-- 형변환 함수 to_char, to_date, to_number 세 가지가 있다.
-- to_char는 숫자/날짜 --> 문자열 
select ename, hiredate, to_char(hiredate, 'YY-MM'), to_char(hiredate, 'YY-MM-DD'), to_char(hiredate, 'YYYY-MM-DD HH12:MM:SS') from emp;

-- to_date 
select ename, hiredate from emp where hiredate = to_date(19810220, 'YYMMDD');

select to_number('100,000', '999,999') - to_number('50,000', '999,999') from dual;

