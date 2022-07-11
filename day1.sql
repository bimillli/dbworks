
SELECT salary,
       salary/30 AS 일급,
       ROUND(salary/30, 1) 결과1
FROM member;