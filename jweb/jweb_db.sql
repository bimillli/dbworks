-- 새 데이터베이스 만들기
-- USER 생성
CREATE USER c##jweb IDENTIFIED BY 54321;

--세션 권한 부여
GRANT CREATE SESSION TO c##jweb;

--테이블과 테이블 공간 생성
GRANT CREATE TABLE, RESOURCE TO c##jweb;

--테이블 스페이스
ALTER USER c##jweb DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--  권한 불충분 에러 뜨 경우


SHOW USER;