select max(article_num)+1 from article;
insert into member values('admin4','admin4','이진규',null,'010-9974-7907','jklee050@gmail.com','55555','서울시어딘가','101동304호',1);
select * from member;
select * from article;
insert into article values(0,null,'admin4','공지사항1','내용1',now(),0,null,default);
delete from article where board_id=0;

DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsert$$

CREATE PROCEDURE loopInsert()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 500 DO
        INSERT INTO article VALUES(1,null,'admin4',concat('이벤트',i),concat('내용',i),now(),0,null);
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER $$

-- CALL loopInsert;

select @rownum:=@rownum+1 as no, A.* from article A where (@rownum:=0)=0 AND board_id=0 order by A.article_id desc LIMIT 1, 10;

select count(*) as listCnt from article where board_id=0;



