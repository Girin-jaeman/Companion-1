CREATE TABLE `member`
(
    `mb_id`     VARCHAR(20)     NOT NULL    COMMENT '아이디', 
    `mb_pw`     VARCHAR(30)     NOT NULL    COMMENT '비밀번호', 
    `mb_name`   VARCHAR(10)     NOT NULL    COMMENT '이름', 
    `mb_tel`    VARCHAR(13)     NULL        COMMENT '일반전화', 
    `mb_phone`  VARCHAR(13)     NOT NULL    COMMENT '휴대전화', 
    `mb_email`  VARCHAR(50)     NOT NULL    COMMENT '이메일', 
    `mb_addr1`  VARCHAR(20)     NOT NULL    COMMENT '주소1', 
    `mb_addr2`  VARCHAR(100)    NOT NULL    COMMENT '주소2', 
    `mb_addr3`  VARCHAR(100)    NOT NULL    COMMENT '주소3', 
    PRIMARY KEY (mb_id)
)COMMENT '회원';

CREATE TABLE `emp`
(
    `emp_id`     VARCHAR(20)    NOT NULL    COMMENT '직원아이디', 
    `emp_pw`     VARCHAR(30)    NOT NULL    COMMENT '비밀번호', 
    `emp_name`   VARCHAR(10)    NOT NULL    COMMENT '이름', 
    `emp_phone`  VARCHAR(13)    NOT NULL    COMMENT '휴대전화', 
    PRIMARY KEY (emp_id)
)COMMENT '직원';

CREATE TABLE `category`
(
    `ctgr_id`     VARCHAR(10)    NOT NULL    COMMENT '분류코드', 
    `ctgr_idref`  VARCHAR(10)    NULL        COMMENT '분류코드참조', 
    `ctgr_name`   VARCHAR(30)    NOT NULL    COMMENT '분류명', 
    PRIMARY KEY (ctgr_id)
)COMMENT '분류';
ALTER TABLE `category`
    ADD CONSTRAINT FK_category_category_ctgr_id FOREIGN KEY (ctgr_idref)
        REFERENCES `category` (ctgr_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `product`
(
    `prdt_id`       VARCHAR(10)     NOT NULL    COMMENT '상품코드', 
    `prdt_name`     VARCHAR(50)     NOT NULL    COMMENT '상품명', 
    `prdt_price`    INT             NOT NULL    COMMENT '가격', 
    `prdt_stock`    INT             NOT NULL    COMMENT '재고', 
    `prdt_img`      VARCHAR(200)    NULL        COMMENT '이미지', 
    `prdt_ctgr_id`  VARCHAR(45)     NOT NULL    COMMENT '분류번호', 
    PRIMARY KEY (prdt_id)
)COMMENT '상품'; 
ALTER TABLE `product`
    ADD CONSTRAINT FK_product_category_ctgr_id FOREIGN KEY (prdt_ctgr_id)
        REFERENCES `category` (ctgr_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `cart`
(
    `ct_id`        INT            NOT NULL    AUTO_INCREMENT COMMENT '장바구니번호', 
    `ct_quantity`  INT            NOT NULL    COMMENT '수량', 
    `ct_mb_id`     VARCHAR(20)    NOT NULL    COMMENT '회원아이디', 
    `ct_prdt_id`   VARCHAR(10)    NOT NULL    COMMENT '상품코드', 
    PRIMARY KEY (ct_id)
)COMMENT '장바구니';
ALTER TABLE `cart`
    ADD CONSTRAINT FK_cart_member_mb_id FOREIGN KEY (ct_mb_id)
        REFERENCES `member` (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `cart`
    ADD CONSTRAINT FK_cart_product_prdt_id FOREIGN KEY (ct_prdt_id)
        REFERENCES `product` (prdt_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `order`
(
    `ord_id`      INT             NOT NULL    AUTO_INCREMENT COMMENT '주문번호', 
    `ord_date`    DATETIME        NOT NULL    COMMENT '주문일', 
    `ord_amount`  INT             NOT NULL    COMMENT '총가격', 
    `ord_name`    VARCHAR(10)     NOT NULL    COMMENT '수령인', 
    `ord_tel`     VARCHAR(13)     NULL        COMMENT '수령인 일반전화', 
    `ord_phone`   VARCHAR(13)     NOT NULL    COMMENT '수령인 휴대전화', 
    `ord_addr1`   VARCHAR(20)     NOT NULL    COMMENT '주소1', 
    `ord_addr2`   VARCHAR(100)    NOT NULL    COMMENT '주소2', 
    `ord_addr3`   VARCHAR(100)    NOT NULL    COMMENT '주소3', 
    `ord_type`    VARCHAR(10)     NOT NULL    COMMENT '결제방법', 
    `ord_state`   VARCHAR(10)     NOT NULL    DEFAULT '결제대기' COMMENT '주문상태', 
    `ord_mb_id`   VARCHAR(20)     NOT NULL    COMMENT '회원아이디', 
    PRIMARY KEY (ord_id)
)COMMENT '주문';
ALTER TABLE `order`
    ADD CONSTRAINT FK_order_member_mb_id FOREIGN KEY (ord_mb_id)
        REFERENCES `member` (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `order_detail`
(
    `orddetail_id`        INT            NOT NULL    AUTO_INCREMENT COMMENT '주문상세번호', 
    `orddetail_price`     INT            NOT NULL    COMMENT '가격', 
    `orddetail_quantity`  INT            NOT NULL    COMMENT '수량', 
    `orddetail_prdt_id`   VARCHAR(10)    NOT NULL    COMMENT '상품코드', 
    `orddetail_ord_id`    INT            NOT NULL    COMMENT '주문번호', 
    PRIMARY KEY (orddetail_id)
)COMMENT '주문상세';
ALTER TABLE `order_detail`
    ADD CONSTRAINT FK_order_detail_product_prdt_id FOREIGN KEY (orddetail_prdt_id)
        REFERENCES `product` (prdt_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `order_detail`
    ADD CONSTRAINT FK_order_detail_order_ord_id FOREIGN KEY (orddetail_ord_id)
        REFERENCES `order` (ord_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `delivery`
(
    `dlvr_id`      INT            NOT NULL    AUTO_INCREMENT COMMENT '택배번호', 
    `dlvr_state`   VARCHAR(10)    NOT NULL    COMMENT '택배상태', 
    `dlvr_ord_id`  INT            NOT NULL    COMMENT '주문번호', 
    PRIMARY KEY (dlvr_id)
)COMMENT '택배';
ALTER TABLE `delivery`
    ADD CONSTRAINT FK_delivery_order_ord_id FOREIGN KEY (dlvr_ord_id)
        REFERENCES `order` (ord_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `payment`
(
    `pmt_id`      INT            NOT NULL    AUTO_INCREMENT COMMENT '결제번호', 
    `pmt_date`    DATETIME       NULL        COMMENT '결제일', 
    `pmt_state`   VARCHAR(10)    NOT NULL    DEFAULT '결재대기' COMMENT '결제상태', 
    `pmt_ord_id`  INT            NOT NULL    COMMENT '주문번호', 
    `pmt_mb_id`   VARCHAR(20)    NOT NULL    COMMENT '회원아이디', 
    PRIMARY KEY (pmt_id)
)COMMENT '결제';
ALTER TABLE `payment`
    ADD CONSTRAINT FK_payment_member_mb_id FOREIGN KEY (pmt_mb_id)
        REFERENCES `member` (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `payment`
    ADD CONSTRAINT FK_payment_order_ord_id FOREIGN KEY (pmt_ord_id)
        REFERENCES `order` (ord_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `coupon`
(
    `cp_id`       INT            NOT NULL    COMMENT '쿠폰코드', 
    `cp_name`     VARCHAR(30)    NOT NULL    COMMENT '쿠폰명', 
    `cp_enddate`  DATETIME       NOT NULL    COMMENT '기한', 
    `cp_sale`     INT            NOT NULL    COMMENT '할인율', 
    PRIMARY KEY (cp_id)
)COMMENT '쿠폰';

CREATE TABLE `coupon_list`
(
    `cplist_id`     INT            NOT NULL    AUTO_INCREMENT COMMENT '쿠폰목록번호', 
    `cplist_cp_id`  INT            NOT NULL    COMMENT '쿠폰코드', 
    `cplist_mb_id`  VARCHAR(20)    NOT NULL    COMMENT '회원아이디', 
    PRIMARY KEY (cplist_id)
)COMMENT '쿠폰목록';
ALTER TABLE `coupon_list`
    ADD CONSTRAINT FK_coupon_list_coupon_cp_id FOREIGN KEY (cplist_cp_id)
        REFERENCES `coupon` (cp_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `coupon_list`
    ADD CONSTRAINT FK_coupon_list_member_mb_id FOREIGN KEY (cplist_mb_id)
        REFERENCES `member` (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `point`
(
    `pt_id`     INT            NOT NULL    AUTO_INCREMENT COMMENT '적립금번호', 
    `pt_money`  INT            NOT NULL    COMMENT '적립금액', 
    `pt_mb_id`  VARCHAR(20)    NOT NULL    COMMENT '회원아이디', 
    PRIMARY KEY (pt_id)
)COMMENT '적립금';
ALTER TABLE `point`
    ADD CONSTRAINT FK_point_member_mb_id FOREIGN KEY (pt_mb_id)
        REFERENCES `member` (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `question`
(
    `qst_id`       INT             NOT NULL    AUTO_INCREMENT COMMENT '문의글번호', 
    `qst_product`  VARCHAR(10)     NOT NULL    COMMENT '상품코드', 
    `qst_title`    VARCHAR(50)     NOT NULL    COMMENT '제목', 
    `qst_content`  TEXT            NOT NULL    COMMENT '내용', 
    `qst_date`     DATETIME        NOT NULL    COMMENT '작성일자', 
    `qst_cnt`      INT             NOT NULL    DEFAULT 0 COMMENT '조회수', 
    `qst_img`      VARCHAR(200)    NULL        COMMENT '이미지', 
    `qst_grpno`    INT             NOT NULL    COMMENT '글그룹번호', 
    `qst_grpord`   INT             NOT NULL    COMMENT '글그룹순서', 
    `qst_depth`    INT             NOT NULL    COMMENT '글깊이', 
    `qst_mb_id`    VARCHAR(20)     NOT NULL    COMMENT '회원아이디', 
    PRIMARY KEY (qst_id)
)COMMENT '문의';
ALTER TABLE `question`
    ADD CONSTRAINT FK_question_member_mb_id FOREIGN KEY (qst_mb_id)
        REFERENCES `member` (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `review`
(
    `rv_id`       INT             NOT NULL    AUTO_INCREMENT COMMENT '후기글번호', 
    `rv_product`  VARCHAR(10)     NOT NULL    COMMENT '상품코드', 
    `rv_title`    VARCHAR(50)     NOT NULL    COMMENT '제목', 
    `rv_content`  TEXT            NOT NULL    COMMENT '내용', 
    `rv_date`     DATETIME        NOT NULL    COMMENT '작성일자', 
    `rv_cnt`      INT             NOT NULL    DEFAULT 0 COMMENT '조회수', 
    `rv_img`      VARCHAR(200)    NULL        COMMENT '이미지', 
    `rv_mb_id`    VARCHAR(20)     NOT NULL    COMMENT '회원아이디', 
    PRIMARY KEY (rv_id)
)COMMENT '후기';
ALTER TABLE `review`
    ADD CONSTRAINT FK_review_member_mb_id FOREIGN KEY (rv_mb_id)
        REFERENCES `member` (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `review_comment`
(
    `rvcmt_id`      INT            NOT NULL    AUTO_INCREMENT COMMENT '댓글번호', 
    `rvcmt_title`   TEXT           NOT NULL    COMMENT '내용', 
    `rvcmt_writer`  VARCHAR(20)    NOT NULL    COMMENT '작성자', 
    `rvcmt_date`    DATETIME       NOT NULL    COMMENT '작성일자', 
    `rvcmt_grpno`   INT            NOT NULL    COMMENT '댓글그룹번호', 
    `rvcmt_grpord`  INT            NOT NULL    COMMENT '댓글그룹순서', 
    `rvcmt_depth`   INT            NOT NULL    COMMENT '댓글깊이', 
    `rvcmt_rv_id`   INT            NOT NULL    COMMENT '게시글번호', 
    PRIMARY KEY (rvcmt_id)
)COMMENT '후기_댓글';
ALTER TABLE `review_comment`
    ADD CONSTRAINT FK_review_comment_review_rv_id FOREIGN KEY (rvcmt_rv_id)
        REFERENCES `review` (rv_id) ON DELETE CASCADE ON UPDATE RESTRICT;

CREATE TABLE `product_detail`
(
    `prdtdetail_id`       INT            NOT NULL    AUTO_INCREMENT COMMENT '상품상세번호', 
    `prdtdetail_prdt_id`  VARCHAR(10)    NOT NULL    COMMENT '상품코드', 
    `prdtdetail_qst_id`   INT            NULL        COMMENT '문의글번호', 
    `prdtdetail_rv_id`    INT            NULL        COMMENT '후기글번호', 
    PRIMARY KEY (prdtdetail_id)
)COMMENT '상품상세';
ALTER TABLE `product_detail`
    ADD CONSTRAINT FK_product_detail_product_prdt_id FOREIGN KEY (prdtdetail_prdt_id)
        REFERENCES `product` (prdt_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `product_detail`
    ADD CONSTRAINT FK_product_detail_question_qst_id FOREIGN KEY (prdtdetail_qst_id)
        REFERENCES `question` (qst_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `product_detail`
    ADD CONSTRAINT FK_product_detail_review_rv_id FOREIGN KEY (prdtdetail_rv_id)
        REFERENCES `review` (rv_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `qa`
(
    `qa_id`       INT             NOT NULL    AUTO_INCREMENT COMMENT 'Q&A글번호', 
    `qa_title`    VARCHAR(50)     NOT NULL    COMMENT '제목', 
    `qa_content`  TEXT            NOT NULL    COMMENT '내용', 
    `qa_writer`   VARCHAR(20)     NOT NULL    COMMENT '작성자', 
    `qa_date`     DATETIME        NOT NULL    COMMENT '작성일자', 
    `qa_cnt`      INT             NOT NULL    DEFAULT 0 COMMENT '조회수', 
    `qa_img`      VARCHAR(200)    NULL        COMMENT '이미지', 
    `qa_mb_id`    VARCHAR(20)     NOT NULL    COMMENT '회원아이디', 
    PRIMARY KEY (qa_id)
)COMMENT 'Q&A';
ALTER TABLE `qa`
    ADD CONSTRAINT FK_qa_member_mb_id FOREIGN KEY (qa_mb_id)
        REFERENCES `member` (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `qa_comment`
(
    `qacmt_id`       INT            NOT NULL    AUTO_INCREMENT COMMENT '댓글번호', 
    `qacmt_content`  TEXT           NOT NULL    COMMENT '내용', 
    `qacmt_writer`   VARCHAR(20)    NOT NULL    COMMENT '작성자', 
    `qacmt_date`     DATETIME       NOT NULL    COMMENT '작성일자', 
    `qacmt_grpno`    INT            NOT NULL    COMMENT '댓글그룹번호', 
    `qacmt_grpord`   INT            NOT NULL    COMMENT '댓글그룹순서', 
    `qacmt_depth`    INT            NOT NULL    COMMENT '댓글깊이', 
    `qacmt_qa_id`    INT            NOT NULL    COMMENT '게시글번호', 
    PRIMARY KEY (qacmt_id)
)COMMENT 'Q&A_댓글';
ALTER TABLE `qa_comment`
    ADD CONSTRAINT FK_qa_comment_qa_qa_id FOREIGN KEY (qacmt_qa_id)
        REFERENCES qa (qa_id) ON DELETE CASCADE ON UPDATE RESTRICT;

CREATE TABLE `notice`
(
    `ntc_id`       INT             NOT NULL    AUTO_INCREMENT COMMENT '공지글번호', 
    `ntc_title`    VARCHAR(50)     NOT NULL    COMMENT '제목', 
    `ntc_content`  TEXT            NOT NULL    COMMENT '내용', 
    `ntc_date`     DATETIME        NOT NULL    COMMENT '작성일자', 
    `ntc_cnt`      INT             NOT NULL    DEFAULT 0 COMMENT '조회수', 
    `ntc_img`      VARCHAR(200)    NULL        COMMENT '이미지', 
    PRIMARY KEY (ntc_id)
)COMMENT '공지사항';

CREATE TABLE `event`
(
    `evt_id`       INT             NOT NULL    AUTO_INCREMENT COMMENT '이벤트글번호', 
    `evt_title`    VARCHAR(50)     NOT NULL    COMMENT '제목', 
    `evt_content`  TEXT            NOT NULL    COMMENT '내용', 
    `evt_date`     DATETIME        NOT NULL    COMMENT '작성일자', 
    `evt_cnt`      INT             NOT NULL    DEFAULT 0 COMMENT '조회수', 
    `evt_img`      VARCHAR(200)    NULL        COMMENT '이미지', 
    PRIMARY KEY (evt_id)
)COMMENT '이벤트';

CREATE TABLE `service`
(
    `svc_id`     VARCHAR(10)    NOT NULL    COMMENT '서비스코드', 
    `svc_name`   VARCHAR(30)    NOT NULL    COMMENT '서비스명', 
    `svc_price`  INT            NOT NULL    COMMENT '가격', 
    PRIMARY KEY (svc_id)
)COMMENT '호텔서비스';

CREATE TABLE `reserve`
(
    `rsv_id`        INT             NOT NULL    AUTO_INCREMENT COMMENT '예약번호', 
    `rsv_date`      DATETIME        NOT NULL    COMMENT '예약일', 
    `rsv_checkin`   DATETIME        NOT NULL    COMMENT '입실일', 
    `rsv_checkout`  DATETIME        NOT NULL    COMMENT '퇴실일', 
    `rsv_type`      VARCHAR(20)     NULL        COMMENT '반려견종', 
    `rsv_age`       INT             NULL        COMMENT '반려견나이', 
    `rsv_msg`       VARCHAR(500)    NULL        COMMENT '기타', 
    `rsv_svc_id`    VARCHAR(10)     NOT NULL    COMMENT '서비스코드', 
    `rsv_mb_id`     VARCHAR(20)     NOT NULL    COMMENT '회원아이디', 
    PRIMARY KEY (rsv_id)
)COMMENT '예약';
ALTER TABLE `reserve`
    ADD CONSTRAINT FK_reserve_service_svc_id FOREIGN KEY (rsv_svc_id)
        REFERENCES `service` (svc_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `reserve`
    ADD CONSTRAINT FK_reserve_member_mb_id FOREIGN KEY (rsv_mb_id)
        REFERENCES `member` (mb_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
