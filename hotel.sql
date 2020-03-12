select * from reserve;
select * from service;
select * from member;
select * from notice;
insert into notice (ntc_title,ntc_content,ntc_date) values ('공지사항1','내용1',now());
insert into notice (ntc_title,ntc_content,ntc_date) values ('공지사항2','내용2',now());
insert into notice (ntc_title,ntc_content,ntc_date) values ('공지사항3','내용3',now());
insert into notice (ntc_title,ntc_content,ntc_date) values ('공지사항4','내용4',now());
insert into notice (ntc_title,ntc_content,ntc_date) values ('공지사항5','내용5',now());
commit;

select * from notice where ntc_id=3