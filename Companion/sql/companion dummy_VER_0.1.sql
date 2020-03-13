use companion

--member dummydata
insert into member values ('kiku01','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
insert into member values ('kiku02','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
insert into member values ('kiku03','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
insert into member values ('kiku04','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
insert into member values ('kiku05','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
insert into member values ('kiku06','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
insert into member values ('kiku07','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
insert into member values ('kiku08','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
insert into member values ('kiku09','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
insert into member values ('kiku010','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1',2);
commit;
--order dummydata 
insert into `order` values (1,'20200123',5000,'최재만','024548','01057459996','우편번호1','기본주소1','상세주소1','card','결제대기','kiku01');
insert into `order` values (2,'20200123',5000,'최재만2','124548','11057459996','우편번호2','기본주소12','상세주소12','card','결제대기','kiku02');
insert into `order` values (3,'20200123',5000,'최재만3','224548','21057459996','우편번호3','기본주소13','상세주소13','card','결제대기','kiku03');
insert into `order` values (4,'20200123',5000,'최재만4','324548','31057459996','우편번호4','기본주소14','상세주소14','card','결제대기','kiku04');
insert into `order` values (5,'20200123',5000,'최재만5','424548','41057459996','우편번호5','기본주소15','상세주소15','card','결제대기','kiku05');
insert into `order` values (6,'20200123',5000,'최재만6','524548','51057459996','우편번호6','기본주소16','상세주소16','card','결제대기','kiku06');
insert into `order` values (7,'20200123',5000,'최재만7','624548','61057459996','우편번호7','기본주소17','상세주소17','card','결제대기','kiku07');
insert into `order` values (8,'20200123',5000,'최재만8','724548','71057459996','우편번호8','기본주소18','상세주소18','card','결제대기','kiku08');
insert into `order` values (9,'20200123',5000,'최재만9','824548','81057459996','우편번호9','기본주소19','상세주소19','card','결제대기','kiku09');
insert into `order` values (10,'20200123',5000,'최재만10','924548','91057459996','우편번호10','기본주소20','상세주소20','card','결제대기','kiku010');
commit;
--cartegory dummy
insert into category values ('1','1','브랜드별사료');
insert into category values ('2','2','장난감');
insert into category values ('3','3','패션/소품');
insert into category values ('4','4','미용/목욕');
insert into category values ('5','5','하우스');
insert into category values ('6','6','소품');
insert into category values ('7','7','외출');
insert into category values ('8','8','기능별사료');
insert into category values ('9','9','배변/위생');
insert into category values ('10','10','식기/물병');


--product dummy
insert into product values ('10011','개밥1',1300,28,'개사진','1');
insert into product values ('11011','김진우',1300,28,'장난감사진','2');
insert into product values ('12011','김진우2',1300,28,'개옷사진','3');
insert into product values ('13011','개샴푸',1300,28,'개샴푸사진','4');
insert into product values ('14011','개집',1300,28,'개집사진','5');
insert into product values ('15011','리본1',1300,28,'개사진','6');
insert into product values ('16011','목줄',1300,28,'목줄사진','7');
insert into product values ('17011','다이어트개밥',1300,28,'사료사진','8');
insert into product values ('18011','배변패드',1300,28,'개패드','9');
insert into product values ('19011','물병',1300,28,'개밥그릇','10');
commit;

insert into `order_detail` values (1011,2000,13,'10011',1);
insert into `order_detail` values (1011,2000,13,'11011',2);
insert into `order_detail` values (1011,2000,13,'12011',3);
insert into `order_detail` values (1011,2000,13,'13011',4);
insert into `order_detail` values (1011,2000,13,'14011',5);
insert into `order_detail` values (1011,2000,13,'15011',6);
insert into `order_detail` values (1011,2000,13,'16011',7);
insert into `order_detail` values (1011,2000,13,'17011',8);
insert into `order_detail` values (1011,2000,13,'18011',9);
insert into `order_detail` values (1011,2000,13,'19011',10);
commit;

insert into `coupon` values (1,'10%할인',now(),10);
insert into `coupon` values (2,'12%할인',now(),12);
insert into `coupon` values (3,'15%할인',now(),15);
insert into `coupon` values (4,'20%할인',now(),20);
insert into `coupon` values (5,'22%할인',now(),22);
insert into `coupon` values (6,'23%할인',now(),23);
insert into `coupon` values (7,'24%할인',now(),24);
insert into `coupon` values (8,'27%할인',now(),27);
insert into `coupon` values (9,'30%할인',now(),30);
insert into `coupon` values (10,'35%할인',now(),35);
commit;

insert into `coupon_list` values (1,1,'kiku01');
insert into `coupon_list` values (2,2,'kiku02');
insert into `coupon_list` values (3,3,'kiku03');
insert into `coupon_list` values (4,4,'kiku04');
insert into `coupon_list` values (5,5,'kiku05');
insert into `coupon_list` values (6,6,'kiku06');
insert into `coupon_list` values (7,7,'kiku07');
insert into `coupon_list` values (8,8,'kiku08');
insert into `coupon_list` values (9,9,'kiku09');
insert into `coupon_list` values (10,10,'kiku010');
commit;

insert into `review` values (null,10011,'제목1','내용1',now(),0,null,'kiku01');
insert into `review` values (null,11011,'제목1','내용1',now(),0,null,'kiku02');
insert into `review` values (null,12011,'제목1','내용1',now(),0,null,'kiku03');
insert into `review` values (null,13011,'제목1','내용1',now(),0,null,'kiku04');
insert into `review` values (null,14011,'제목1','내용1',now(),0,null,'kiku01');
insert into `review` values (null,15011,'제목1','내용1',now(),0,null,'kiku01');
insert into `review` values (null,16011,'제목1','내용1',now(),0,null,'kiku02');
insert into `review` values (null,10011,'제목1','내용1',now(),0,null,'kiku03');
insert into `review` values (null,10011,'제목1','내용1',now(),0,null,'kiku01');
insert into `review` values (null,10011,'제목1','내용1',now(),0,null,'kiku01');
commit;

insert into `question` values (




insert into `product_detail` values (null,'10011',null,1);


select * from `product_detail`;
commit;

select * from a.`product_detail`, b.`review` from `product_detail` a left join outer join `review` b on a.'prdtdetail_prdt_id'=b.'rv_product'  where a.'prdtdetail_prdt_id'='10011';

select  a.prdtdetail_id, a.prdtdetail_rv_id, b.rv_id from product_detail a, (select rv_id, rv_product from review where rv_product = '10011') b where a.prdtdetail_prdt_id = b.rv_product ;
select a.prdtdetail_id, a.prdtdetail_prdt_id, a.prdtdetail_qst_id, a.prdtdetail_rv_id, b.rv_product, b.rv_id, b.rv_title, b.rv_content, b.rv_date, b.rv_mb_id from product_detail a, review b where a.prdtdetail_prdt_id=b.rv_product;






