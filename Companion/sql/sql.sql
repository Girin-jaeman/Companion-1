CREATE TABLE IF NOT EXISTS `companion`.`member` (
  `member_id` VARCHAR(20) NOT NULL COMMENT '아이디',
  `member_pw` VARCHAR(30) NOT NULL COMMENT '비밀번호',
  `member_name` VARCHAR(10) NOT NULL COMMENT '이름',
  `member_tel` VARCHAR(13) NULL DEFAULT NULL COMMENT '일반전화',
  `member_phone` VARCHAR(13) NOT NULL COMMENT '휴대전화',
  `member_email` VARCHAR(50) NOT NULL COMMENT '이메일',
  `member_addr1` VARCHAR(20) NOT NULL COMMENT '주소1',
  `member_addr2` VARCHAR(100) NOT NULL COMMENT '주소2',
  `member_addr3` VARCHAR(100) NOT NULL COMMENT '주소3',
  `member_grade` INT NULL DEFAULT '2' COMMENT '구분코드',
  PRIMARY KEY (`member_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin
COMMENT = '회원';