--t_address 테이블 생성
CREATE TABLE t_address1(
    num         NUMBER(4),
    username    VARCHAR2(20),
    tel         VARCHAR2(20) NOT NULL,
    email       VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(6),
    joinDate    DATE DEFAULT SYSDATE,
    PRIMARY KEY(num)
);


--일련번호(시퀀스) 생성
CREATE SEQUENCE ab_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;


INSERT INTO t_address1(num, username, tel, email, gender, joinDate)
VALUES(ab_seq.NEXTVAL, '한지수', '010-2656-5646', 'test@naver.com', '남', SYSDATE);

SELECT * FROM t_address1;
DELETE FROM t_address1; --전체 데이터삭제
ROLLBACK;
DROP SEQUENCE ab_seq; --시퀀스 삭제
COMMIT;


