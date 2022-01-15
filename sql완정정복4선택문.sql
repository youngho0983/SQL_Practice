/*전체 검색 SELECT 필드목록 FROM 테이블 [WHERE 조건] [ORDER BY 정렬 기준]*/
SELECT * FROM TCITY;

SELECT * FROM TSTAFF;
      

SELECT NAME , POPU FROM TCITY;

SELECT REGION, NAME ,  AREA FROM TCITY;


SELECT NAME '이름', AREA AS '면적(제곱KM)', POPU AS '인구(만명)' FROM TCITY;

SELECT NAME, POPU * 10000 AS "인구 (명)" FROM TCITY;

SELECT NAME, AREA, POPU, POPU * 10000 / AREA AS "인구밀도" FROM TCITY;

/* DUAL 테이블은 DUMMY 열이 하나 있고 X 하나 들어있는 테이블임 ( 계산용 ) */

SELECT 60 * 60 * 24 AS '하루' FROM DUAL;

SELECT * FROM DUAL;


-- WHERE  절 이용해서 조건 걸기  비교하는 대상과 비교값은 같은 자료형 이여야 한다.

SELECT * FROM TCITY WHERE AREA > 1000;

SELECT NAME, AREA FROM TCITY WHERE AREA > 1000;

/*

 A = B  같다 
 A > B  A가 크가
 A < B  A가 더 작다
 A >= B A가 크거나 같다
 A <= B A 가 작거나 같다
 A <> B A != B   A 는 B 와 다르다.

문자열과 날짜상수는 작은 따옴표로 감싸야한다.
*/

SELECT * FROM TCITY WHERE NAME = '서울';

SELECT * FROM TCITY ;

SELECT * FROM TCITY WHERE METRO = 'Y';

SELECT * FROM TCITY WHERE METRO = 'y';


-- 연습 문제

-- 인구 10만명 미만의 도시 이름
SELECT NAME FROM TCITY WHERE POPU < 10;

-- 전라도에 있는 도시의 정보를 출력하라.

SELECT * FROM TCITY WHERE REGION = '전라';

-- 월급 400 이상 직원 이름

SELECT NAME FROM TSTAFF WHERE SALARY >= 400;

SELECT * FROM TSTAFF;

-- NULL 체크

SELECT * FROM TSTAFF WHERE SCORE = NULL; -- X

SELECT  * FROM TSTAFF WHERE SCORE IS NULL;

SELECT  * FROM TSTAFF WHERE SCORE IS NOT NULL;

-- 논리 연산자

SELECT * FROM TCITY WHERE POPU >= 100 AND AREA >= 700;

-- AND 의 우선순위가 OR 보다 높다.

SELECT * FROM TCITY WHERE REGION = '경기' AND POPU >= 50 OR AREA >= 500;

SELECT * FROM TCITY WHERE REGION = '경기'  OR AREA >= 500 AND POPU >= 50;
SELECT * FROM TCITY WHERE REGION = '경기'  OR (AREA >= 500 AND POPU >= 50);  -- 위의 것과 같다.

SELECT * FROM TCITY WHERE (REGION = '경기' OR AREA >= 500) AND POPU >= 50;

-- NOT 연산자 이용

SELECT * FROM TCITY WHERE REGION != '경기';

SELECT * FROM TCITY WHERE NOT(REGION = '경기');

-- NOT 을 해야할 것이 많을떄 쓴다. 드모르간 주의

SELECT * FROM TCITY WHERE REGION != '전라' AND METRO != 'Y';

SELECT * FROM TCITY WHERE NOT(REGION = '전라' OR METRO = 'Y');


-- 연습 문제 

-- 직원 목록에서 월급 300미만 이면서 성취도가 60 이상인 직원


SELECT * FROM TSTAFF;


SELECT * FROM TSTAFF WHERE SALARY < 300 AND  SCORE > 60.00;

-- 영업부 여직원 이름 조회

SELECT NAME FROM TSTAFF WHERE DEPART = '영업부' AND GENDER = '여';

/* LIKE 검색

	% 복수개의 문자와 대응 
	_ 하나의 문자와 대응
	[] 안에 포함된 문자 하나와 대응
	[^] 안에 포함된 문자를 리스트에서 제외

*/

SELECT * FROM TCITY WHERE NAME LIKE '%천%';

SELECT * FROM TCITY WHERE NAME NOT LIKE '%천%';

SELECT * FROM TCITY WHERE NAME LIKE '%천';
SELECT * FROM TCITY WHERE NAME LIKE '천%';


-- ESCAPE 이용해서 % 라이크검색하기 30% 를 포함한 문자열

SELECT * FROM TSTAFF WHERE NAME LIKE ('%30%')   -- 이러면 30 포함으로 됨

SELECT * FROM TSTAFF WHERE NAME LIKE ('%30#%') ESCAPE '#';

-- 연습 문제
-- 직원 목록으로 정씨 조사
SELECT * FROM TSTAFF WHERE NAME LIKE ('정%');

-- 직원 중 신 자가 포함된 이름 검색

SELECT * FROM TSTAFF WHERE NAME LIKE ('%신%');



select * from tstaff;

select * from strtest where  name like ('%30#%%') escape '#';


select * from tcity where popu between 50 and 100;

select * from tcity where popu >= 50 and popu <= 100;


select * from tstaff where name BETWEEN '가' AND '사';

SELECT * FROM TSTAFF WHERE JOINDATE BETWEEN 20150101 AND 20180101;

// 면접 500~1000  사이의 도시의 목록을 조사하라
SELECT * FROM TCITY WHERE AREA BETWEEN 500 AND 1000;
// 200 300 (이상 이하로 됨) 사이의 월급 사람들
SELECT * FROM TSTAFF WHERE SALARY BETWEEN 200 AND 300;


SELECT * FROM TCITY WHERE REGION IN ("경기","전라");

SELECT * FROM TCITY WHERE REGION = "경기" OR REGION = "전라";

SELECT * FROM TCITY WHERE REGION NOT IN ('경상', '전라');
/*
SELECT * 
FROM TSTAFF 
WHERE NAME LIKE IN ('이%' , '안%');
*/

SELECT *
FROM TSTAFF
WHERE NAME LIKE '이%' OR NAME LIKE '안%';


// 총무부 영업부
SELECT * FROM TSTAFF WHERE DEPART IN ("총무부","영업부");

//인사과 영업부 대리 목록
SELECT * FROM TSTAFF WHERE DEPART IN ("영업부","인사과") AND GRADE = "대리";

// 차장급 이상의 여직원 목록
SELECT DISTINCT GRADE FROM TSTAFF;
SELECT * FROM TSTAFF WHERE GRADE IN ("차장", "이사" ,"부장") AND GENDER = "여";



