
--시퀀스 생성
CREATE SEQUENCE mySeq
INCREMENT BY 1           --1씩증가     
START WITH 1             --1부터시작
MINVALUE 1               --최소값과 최대값 지정
MAXVALUE 1000
NOCYCLE                  --메모리관련
NOCACHE;

-- 1부터 시작해 1씩 증가, 최소값1부터 최대값 1000까지
-- 순번을 자동생성함, 만든 시퀀스를 board테이블에 사용하기

-- board테이블 생성
CREATE TABLE board(
    bno         NUMBER(4) PRIMARY KEY,
    title       VARCHAR2(50) NOT NULL,
    content     VARCHAR2(2000) NOT NULL,
    regDate     DATE DEFAULT SYSDATE
);