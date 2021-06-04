--DDL문(create; alter; drop;), DCL문(commit; rollback;)
--DML문(DataManipulation Language) insert,update,delete
--insert문:테이블에 새로운 레코드(row)를 추가
CREATE TABLE dept02 AS SELECT * FROM dept WHERE 1=0;
--위 쿼리는 테이블을 복제하는 명령
--위처럼 쿼리를 실행하면 dept테이블과 구조와 내용이 똑같은 테이블이생성
--where 조건이 붙으면, 구조는 같으나 내용은 빈 테이블이 생성
INSERT INTO dept02 (
--필드명
deptno, dname, loc
)VALUES(
10, '개발부서', '천안'
--바인딩값
);
--DCL명령어 인 커밋이 필수이다.
COMMIT;--데이터베이스쿼리직접입력한 결과는 반드시 커밋을 해줘야지만
--실제 저장이 된다. 커밋을 안하면, 여기만 보이고 다른곳은 보이지 않는다.
SELECT * FROM dept02 ORDER BY dept02 ;
--DELETE는 레코드1줄을 지우는 명령어
DELETE FROM dept02;--이렇게 사용하면 안됨 ->모든레코드가삭제됨(주의).
DELETE FROM dept02 WHERE deptno >= 0;--모두 삭제 where반드시 포함
