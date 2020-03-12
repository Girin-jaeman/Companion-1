use companion
--member dummydata
insert into member values ('kiku01','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1')
insert into member values ('kiku02','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1')
insert into member values ('kiku03','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1')
insert into member values ('kiku04','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1')
insert into member values ('kiku05','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1')
insert into member values ('kiku06','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1')
insert into member values ('kiku07','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1')
insert into member values ('kiku08','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1');
insert into member values ('kiku09','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1');
insert into member values ('kiku010','0000','최재만','02456','01057459996','kiku02@naver.com','우편번호1','기본주소1','상세주소1');
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
commit;

--product dummy
insert into product values ('10011','개밥1',1300,28,'1');
insert into product values ('11011','김진우',1300,28,'2');
insert into product values ('12011','김진우2',1300,28,'3');
insert into product values ('13011','개샴푸',1300,28,'4');
insert into product values ('14011','개집',1300,28,'5');
insert into product values ('15011','리본1',1300,28,'6');
insert into product values ('16011','목줄',1300,28,'7');
insert into product values ('17011','다이어트개밥',1300,28,'8');
insert into product values ('18011','배변패드',1300,28,'9');
insert into product values ('19011','물병',1300,28,'10');
commit;















