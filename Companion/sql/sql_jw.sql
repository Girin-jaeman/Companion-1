use companion;
insert into `member` values('admin','admin','관리자','02-3456-7890','010-1234-5678','admin@admin.com','우편번호','기본주소','상세주소',0);

DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsert $$
CREATE PROCEDURE loopInsert()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 20 DO
        INSERT INTO article VALUES(0,null,'admin',concat('제목',i),concat('내용',i),now(),0,null);
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER $$
-- CALL loopInsert;

select * from article ;
update article set board_id=0 where article_id>40;
commit;

select article_title, article_content, article_date, article_image from article where article_id=2;

