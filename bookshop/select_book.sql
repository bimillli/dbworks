--book 테이블 만들기
CREATE TABLE book(
    bookid NUMBER PRIMARY KEY,
    bookname VARCHAR2(40),
    publisher VARCHAR2(40),
    price NUMBER
);

--book 자료 삽입
INSERT INTO book VALUES(1,'축구의 역사','굿스포츠',7000);
INSERT INTO book VALUES(2,'축구아는 여자','나무수',13000);
INSERT INTO book VALUES(3,'축구의 이해','대한미디어',22000);
INSERT INTO book VALUES(4,'골프 바이블','대한미디어',35000);
INSERT INTO book VALUES(5,'피겨 교본','굿스포츠',8000);
INSERT INTO book VALUES(6,'양궁의 실제','굿스포츠',6000);
INSERT INTO book VALUES(7,'야구의 추억','이상미디어',20000);
INSERT INTO book VALUES(8,'야구를 부탁해','이상미디어',13000);
INSERT INTO book VALUES(9,'올림픽 이야기','삼성당',7500);
INSERT INTO book VALUES(10,'Olympic Champions','Pearson',13000);

--book 자료 검색, 모든 도서의 이름과 가격을 검색하시오
SELECT bookname, price FROM book;

--모든 도서의 도서 번호, 도서이름, 출판사,가격
SELECT bookid, bookname, publisher, price FROM book;

--모든 출판사 검색 - (중복제거 - DISTINCT)
SELECT DISTINCT publisher FROM book;

--조건절 WHERE
--책번호가 5번인 도서를 검색하시오
SELECT * FROM book WHERE bookid = 5;
WHERE bookid <> 5;
--가격이 20000원 미만인 도서를 검색
SELECT*
FROM book
WHERE price < 20000;

--범위 : 가격이 10000원 이상 20000원 이하
--BETWEEN ~ AND
SELECT*
FROM book
WHERE price BETWEEN 10000 AND 20000;

SELECT*
FROM book
WHERE price >= 10000 AND price <= 20000;

--IN(A, B) : A또는 B
--출판사가 '굿스포츠' 혹은 '대한미디어'인 도서를 검색하시오
SELECT*
FROM book
WHERE publisher IN('굿스포츠', '대한미디어');

--출판사가 '굿스포츠' 혹은 '대한미디어'가 아닌 도서 검색
SELECT*
FROM book
WHERE publisher NOT IN('굿스포츠','대한미디어');

--Like 연산자 : % 기호사용
--'축구의 역사'를 출간한 출판사 검색
SELECT*
FROM book
WHERE bookname LIKE '축구의 역사';

--도서 이름에 '축구'가 포함된 출판사 검색
--시작하는 문장 : %단어, 끝나는 문장 : 단어%
SELECT bookname, publisher
FROM book
WHERE bookname LIKE '%축구%';

-- '축구'에 관한 도서 중 가격이 20000원 이상인 도서 검색
SELECT bookname, publisher, price
FROM book
WHERE bookname LIKE '%축구%' AND price >= 20000;

--도서를 이름순으로 정렬하시오
--ASC 생략하면 오름차순 , DESC는 내림차순
SELECT*
FROM book
ORDER BY bookname;

--도서를 가격의 내림차순으로 검색하고, 가격이 같으면 출판사를 오름차순 검색
SELECT*
FROM book
ORDER BY price DESC, publisher ASC;
