--부서와 사원 테이블 생성
CREATE TABLE department(
    deptid NUMBER, --부서번호
    deptname VARCHAR2(20) NOT NULL, --부서이름not null, 자료를 필수로입력해야함
    location VARCHAR2(20) NOT NULL, --사무실위치
    PRIMARY KEY(deptid)
);

CREATE TABLE employee(
    empid NUMBER(3) PRIMARY KEY,   --사원ID
    empname VARCHAR2(20) NOT NULL, --사원이름
    age NUMBER(3),                 --나이
    deptid NUMBER,                 --부서번호(외래키) 관계-1대 多
    CONSTRAINT EMP_FK FOREIGN KEY(deptid) REFERENCES department(deptid) --외래키 선언
);
---------------------------------------
--부서 자료 추가
INSERT INTO department VALUES (10, '전산팀', '서울');
INSERT INTO department VALUES (20, '총무팀', '인천');

--사원 자료 추가
INSERT INTO employee VALUES(101, '이강', 27, 10);
INSERT INTO employee VALUES(102, '김산', 28, 20);
INSERT INTO employee VALUES(103, '정들', 35, 30);

--부서 삭제
DELETE FROM department WHERE deptid = 10;

--외래키 제약 조건 삭제
ALTER TABLE employee DROP CONSTRAINT EMP_FK;

--자료검색
SELECT * FROM department;
SELECT * FROM employee;
