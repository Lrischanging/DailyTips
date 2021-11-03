SET SQL_SAFE_UPDATES=0;

UPDATE hello_member_pics JOIN 
(SELECT id,mid FROM hello.hello_member) tmp
ON hello_member_pics.member_id = tmp.id
SET hello_member_pics.mid = tmp.mid;

SET SQL_SAFE_UPDATES=1;

insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (23015,102,null,null,'607275',1,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (23014,102,null,null,'112892',1,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (23010,102,null,null,'744646',1,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (23007,102,null,null,'591368',2,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (23006,102,null,null,'545121',1,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (23005,102,null,null,'501053',2,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (22995,102,null,null,'380409',2,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (22989,102,null,null,'142010',1,4,1);