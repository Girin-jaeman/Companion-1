-- dummy
use companion;

-- grade
insert into `grade` values(0,'최고관리자');
insert into `grade` values(1,'관리자');
insert into `grade` values(2,'회원');

-- coupon_state
insert into `coupon_state` values(0,'미사용');
insert into `coupon_state` values(1,'사용');
insert into `coupon_state` values(2,'기한경과');

-- point_state
insert into `point_state` values(0,'적립');
insert into `point_state` values(1,'차감');

-- board
insert into `board` values(0,'공지사항');
insert into `board` values(1,'이벤트');
insert into `board` values(2,'Q&A');
insert into `board` values(3,'후기');

-- question_type
insert into `question_type` values(0,'교환');
insert into `question_type` values(1,'환불');
insert into `question_type` values(2,'출하 전 취소');
insert into `question_type` values(3,'배송');
insert into `question_type` values(4,'불량 A/S');
insert into `question_type` values(5,'주문/결제');
insert into `question_type` values(6,'상품/재입고');
insert into `question_type` values(7,'쿠폰/적립금');
insert into `question_type` values(8,'회원 관련');
insert into `question_type` values(9,'기타 문의');

-- question_state
insert into `question_state` values(0,'답변대기');
insert into `question_state` values(1,'답변완료');

-- question_secret
insert into `question_secret` values(0,'공개글');
insert into `question_secret` values(1,'비공개글');

-- category
insert into `category` values(100,null,'사료');
insert into `category` values(200,null,'간식');
insert into `category` values(300,null,'장난감');
insert into `category` values(400,null,'미용용품');
insert into `category` values(500,null,'목용용품');
insert into `category` values(600,null,'위생용품');
insert into `category` values(700,null,'산책용품');

-- order_state
insert into `order_state` values(0,'결제대기','결제대기');
insert into `order_state` values(1,'결제완료','결제완료');
insert into `order_state` values(2,'배송준비중','배송준비중');
insert into `order_state` values(3,'배송준비중','출고요청');
insert into `order_state` values(4,'배송준비중','출고처리중');
insert into `order_state` values(5,'배송중','출고완료');
insert into `order_state` values(6,'배송완료','배송완료');
insert into `order_state` values(7,'구매확정','구매확정');
insert into `order_state` values(8,'교환','교환');
insert into `order_state` values(9,'반품','반품');
insert into `order_state` values(10,'주문취소','주문취소');

-- delivery_state
insert into `delivery_state` values(0,'배송준비중');
insert into `delivery_state` values(1,'배송중');
insert into `delivery_state` values(2,'배송완료');

-- service
insert into `service` values(0,'호텔&데이케어');
insert into `service` values(1,'유치원');
insert into `service` values(2,'독파크');
insert into `service` values(3,'아카데미');
insert into `service` values(4,'그루밍&스파');
insert into `service` values(5,'스튜디오');
insert into `service` values(6,'메디컬센터');
insert into `service` values(7,'스페셜케어');

-- reserve_state
insert into `reserve_state` values(0,'신청완료');
insert into `reserve_state` values(1,'예약완료');
insert into `reserve_state` values(2,'이용중');
insert into `reserve_state` values(3,'이용완료');

-- payment_methodservice

-- payment_state
