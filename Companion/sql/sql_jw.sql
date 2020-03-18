use companion;
insert into `member` values('admin','1234','어드민',null,'010-0000-0001','admin@admin.com','55555','서울시','비트캠프',0);

DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsert $$
CREATE PROCEDURE loopInsert()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 800 DO
        INSERT INTO article VALUES(0,null,'admin',concat('제목',i),concat('내용',i),now(),0,null);
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER $$
CALL loopInsert;
update article set board_id=1 where article_id>100;
update article set board_id=2 where article_id>200;
update article set board_id=3 where article_id>300;
update article set board_id=0 where article_id>400;
update article set board_id=1 where article_id>500;
update article set board_id=2 where article_id>600;
update article set board_id=3 where article_id>700;
commit;

select * from member order by member_id desc;
select * from article where board_id=0;
select article_title, article_content, article_date, article_image from article where article_id=2;
select * from category;
insert into category values(701,700,'테스트1');
insert into category values(702,700,'테스트2');
insert into category values(703,700,'테스트3');
select * from product;
insert into product values(700,null,'테스트','관리자 상품 입력 테스트',30000,30,now(),null,null,null,null,null,null,null);
select * from question;
insert into question values(null,100,null,1,'회원1',now(),null,'테스트제목','테스트내용',null,null,0,0);

select * from product p inner join category c on p.category_id=c.category_id where p.product_id=72;
select * from product p, category c where p.category_id=c.category_id and p.product_id=72;

select * from `like`;
insert into `like` values (null,'admin',1);
insert into `like` values (null,'admin',2);
insert into `like` values (null,'admin',3);
select count(product_id) from `like` where member_id='admin' and product_id=2;


