

-- ��root�û���¼ϵͳ��ִ�нű�

-- �������ݿ�
create database mydb61 character set utf8 ; 

-- ѡ�����ݿ�
use mydb61;

-- ���� dbuser1 �û�
-- 	�����û���dbuser61������Ϊ ��dbuser61��ӵ�в������ݿ�mydb61������Ȩ��
	GRANT ALL ON mydb61.* TO dbuser61 IDENTIFIED BY "dbuser61";
	flush privileges;

-- grant select,insert,update,delete on mydb61.* to dbuser61@localhost identified by "dbuser61";
-- grant select,insert,update,delete on mydb61.* to dbuser61@'%' identified by "dbuser61";

-- ������

-- �������ű� ����ֵ
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`(
	`deptno`     int(2) PRIMARY KEY,
 	`dname`       varchar(14) NOT NULL,
 	`loc`        	varchar(13)
)DEFAULT CHARSET=utf8;

INSERT INTO dept VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES(20, 'RESEARCH', 'DALLAS');
INSERT INTO dept VALUES(30, 'SALES', 'CHICAGO');
INSERT INTO dept VALUES(40, 'OPERATIONS', 'BOSTON');

commit;

-- ע��mysql��sql���� Լ����������֣���Ҫ����д�ڱ����
-- ����Ա���� ����ֵ
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`(
	-- `empno`           int(4) constraint emp_empno_pk PRIMARY KEY,
	`empno`           int(4) PRIMARY KEY,
	`ename`          	varchar(10) NOT NULL,
	`job`            	varchar(9),
	`mgr`            	int(4),
	`hiredate`       	DATE,
	`sal`            	int ,
	`comm`           	int,
	`deptno`        	int(2) ,
	constraint emp_deptno_fk  foreign key(deptno) references dept(deptno)
)DEFAULT CHARSET=utf8;

--�������� 
-- CREATE  INDEX MYSCOTT.IX_CAtbAuditOperInfo_OT ON MYSCOTT.EMP(ENAME) TABLESPACE ts_myscott2;
create index emp_ename_index on emp(ename);

--ע�� ���ڸ�ʽ��һ��
INSERT INTO emp VALUES(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20);
INSERT INTO emp VALUES(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30);
-- INSERT INTO emp(empno, ename, job, mgr, hiredate, sal,  deptno) VALUES(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 30);
INSERT INTO emp VALUES(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30);            
INSERT INTO emp VALUES(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20);
INSERT INTO emp VALUES(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30);
INSERT INTO emp VALUES(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30);
            
INSERT INTO emp VALUES(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10);
INSERT INTO emp VALUES(7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19', 3000, NULL, 20);
INSERT INTO emp VALUES(7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10);
            
INSERT INTO emp VALUES(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30);
INSERT INTO emp VALUES(7876, 'ADAMS', 'CLERK', 7788, '1987-05-23', 1100, NULL, 20);
INSERT INTO emp VALUES(7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30);
            
INSERT INTO emp VALUES(7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20);
INSERT INTO emp VALUES(7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);
commit;

-- �������ʼ���� ����ֵ
DROP TABLE IF EXISTS `salgrade`;
CREATE TABLE `salgrade`(
 	`grade`        	int,
 	`losal`           int,
 	`hisal`           int
)DEFAULT CHARSET=utf8;

INSERT INTO salgrade VALUES(1, 700, 1200);
INSERT INTO salgrade VALUES(2, 1201, 1400);
INSERT INTO salgrade VALUES(3, 1401, 2000);
INSERT INTO salgrade VALUES(4, 2001, 3000);
INSERT INTO salgrade VALUES(5, 3001, 9999);
commit;

--���������
DROP TABLE IF EXISTS `bonus`;
CREATE TABLE bonus(
	`ename`      VARCHAR(10),
 	`job`       VARCHAR(9),
 	`sal`      	int,
 	`comm`      int
)DEFAULT CHARSET=utf8;

commit;

    
CREATE TABLE `work`(
 	`grade`        	int,
 	`losal`           int,
 	`hisal`           int
)DEFAULT CHARSET=utf8;

CREATE TABLE `work`(
 	`id`        	int,
 	`name`           char,
 	`sex`           int
)DEFAULT CHARSET=utf8;
INSERT INTO work VALUES(1, '��Ρ', 1200);
INSERT INTO work VALUES(2, '���', 1200);
INSERT INTO work VALUES(3, '���', 1200);

