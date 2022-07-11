--ex4 테이블 생성 
CREATE TABLE ex4(
    userId      VARCHAR2(10) PRIMARY KEY, --기본키 선언(기본키에 유니크와 낫널이있음)
    passwd      VARCHAR2(10) NOT NULL
);
--테이블 이름 변경 ex4 -> member
ALTER TABLE ex4 RENAME TO member;

--가입일 칼럼 추가
ALTER TABLE member ADD regDate Date;

--입사일 칼럼추가
ALTER TABLE member ADD hireDate VARCHAR2(20);

--입사일 칼럼수정
ALTER TABLE member MODIFY hireDate VARCHAR2(30);

--급여 칼럼 추가
ALTER TABLE member ADD salary NUMBER;

--데이터 삽입
INSERT INTO member (userId, passwd) VALUES ('sky2022','abcd123');
INSERT INTO member (userId, passwd) VALUES ('river2022','abcd12345');
--삽입
INSERT INTO member (userId, passwd, regDate, salary, hireDate)
VALUES ('smile2022', 'abcd1234', SYSDATE, 1000000);

--데이터 수정(변경) - UPDATE 테이블명 SET 칼럼명=값 WHERE 조건
UPDATE member SET salary = 2000000 WHERE userId = 'smile2022';
UPDATE member SET salary = 1000000 WHERE userId = 'river2022';

--userId가 'sky2022'에 등록일과 급여 데이터 수정하기
--UPDATE member SET salary = 1000000 WHERE userId = 'sky2022';
--UPDATE member SET regDate = SYSDATE WHERE userId = 'sky2022';
UPDATE member SET regDate = SYSDATE, salary = 1000000 WHERE userId = 'sky2022';

DELETE FROM member; --데이터 삭제하기(전체)

DELETE FROM member WHERE userId = 'river2022'; --특정 데이터삭제
COMMIT; -- 커밋
ROLLBACK; -- 최근커밋 전으로 롤백
FLASHBACK; --?

--데이터 조회
SELECT * FROM member;

--데이터 조회(오름차순 정렬, DESC - 내림차순)
SELECT * FROM member ORDER BY salary DESC;

--특정 조건을 조회(id,pw,가입일 등등) SELECT 칼럼명 FROM 테이블명 WHERE 조건
SELECT regDAte FROM member WHERE userId = 'river2022';

--테이블 복사
CREATE TABLE member2 AS
SELECT * FROM member

--테이블삭제
DROP TABLE member2;

--테이블의 구조
DESC member;