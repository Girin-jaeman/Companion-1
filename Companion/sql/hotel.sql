insert into reserve (rsv_date,rsv_checkin,rsv_checkout,rsv_type,rsv_age,rsv_msg,rsv_svc_id,rsv_mb_id) values ('2020-03-11','2020-04-12','2020-04-18','말티즈','11','새롬이','testcode','admin4');
insert into service values ('testcode','testname','100000','large');
insert into member values ('admin4','admin4','이진규','01099747907','01099747907','jklee050@gmail.com','주소1','주소2','주소3');

select * from reserve
commit;