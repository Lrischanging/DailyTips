select SUM(item_price) from hello.`order` where (status = 1 or status = 2) and create_time between '2021-10-01' and '2021-11-01';
select * from hello.`order` where (status = 1 or status = 2) and create_time between '2021-10-01' and '2021-11-01';
 (item_id=46 or item_id=47 or item_id=48 or item_id=49 or item_id=50 or item_id=51) and STR_TO_DATE('2020/11/13','%Y-%m-%d')
 select count(*) as increase_uv,name as a from hello_member where date_format(create_time,'%Y%m%d') = 20211001
 select * from hello_member where create_time between '2021-10-01' and '2021-10-02'
 select count(*) as total_uv from hello_member where date_format(create_time,'%Y%m%d') <= 20200224;
 
 select count(*) as increase_uv from hello_member where date_format(create_time,'%Y%m%d') = 20211113
 
 UPDATE `hello`.`statistics_day`SET increase_uv = ( select count(*) as increase_uv from hello_member where date_format(create_time,'%Y%m%d') = 20211113)WHERE ds =20211113
 
 INSERT INTO `hello`.`order`(`id`, `member_id`, `item_id`, `out_id`, `wechat_order_id`, `refund_out_id`, `refund_wechat_order_id`, `item_name`, `item_price`, `status`, `feature`, `is_delete`, `create_time`, `modify_time`) VALUES (285, 23022, 110, '110923411411002302258', '4200001191202111096644079198', NULL, NULL, '获取鱼干报名活动', 140, 1, '{\"coinItemId\":124,\"applyActivityId\":106}', 0, '2021-11-13 23:41:15', '2021-11-13 23:41:20');

 select count(*) from hello_member where create_time between date_format((date_sub(NOW(),interval 1 day)),'%Y-%m-%d') and date_format(NOW(),'%Y-%m-%d');
select count(*) from hello_member where create_time < date_format(NOW(),'%Y-%m-%d');
select count(*) from hello_member;
select SUM(item_price) from hello.`order` where (status = 1 or status = 2) and create_time between date_format((date_sub(NOW(),interval 1 day)),'%Y-%m-%d') and date_format(NOW(),'%Y-%m-%d');
select SUM(item_price) from hello.`order` where PERIOD_DIFF( DATE_FORMAT( now( ) ,'%Y%m') , DATE_FORMAT( create_time,'%Y%m') ) = 1;
SELECT NOW();
SELECT date_sub(NOW(),interval 1 day);
SELECT date_add(NOW(),interval 1 day);
select date_format((date_add(NOW(),interval 1 day)),'%Y-%m-%d');

select SUM(item_price) from hello.`order` where create_time between '2021-10-1' and '2021-11-1';

select date_add(curdate(), interval - day(curdate()) + 1 day);
select SUM(item_price) from hello.`order` where create_time between date_add(curdate(), interval - day(curdate()) + 1 day) and ;

UPDATE `hello`.`statistics_day`SET increase_order_fee = (select SUM(item_price) as increase_order_fee from hello.`order` where status in (1,2) and date_format(create_time,'%Y%m%d') = 20211113) WHERE ds =20211113;

select SUM(item_price) as increase_order_fee from hello.`order` where status in (1,2) and date_format(create_time,'%Y%m%d') = 20211113

select SUM(item_price) from hello.`order` where (status = 1 or status = 2) and create_time between date_format((date_sub(NOW(),interval 1 day)),'%Y-%m-%d') and date_format(NOW(),'%Y-%m-%d');

UPDATE `hello`.`statistics_day`SET （increase_uv） = （ select count(*) as increase_uv from hello_member where date_format(create_time,'%Y%m%d') = 20211115）WHERE ds = 20211115;
select count(*) as increase_uv from hello_member where date_format(create_time,'%Y%m%d') = 20211115
UPDATE `hello`.`statistics_day` SET increase_uv = 0 WHERE ds=20211115;

UPDATE `hello`.`statistics_day`SET total_uv = (select count(*) as total_uv from hello_member where date_format(create_time,'%Y%m%d') <= 20211115)WHERE ds = 20211115;

UPDATE `hello`.`statistics_day`SET total_uv = (select count(*) as total_uv from hello_member where date_format(create_time,'%Y%m%d') <= 20211115)WHERE ds = 20211115;
UPDATE `hello`.`statistics_day`SET increase_order_fee = (select SUM(item_price) as increase_order_fee from hello.`order` where status in (1,2) and date_format(create_time,'%Y%m%d') = 20211115)WHERE ds = 20211115;

select date_add(20211115, interval - day(20211115) + 1 day);
SELECT date_format((select date_add(20211115, interval - day(20211115) + 1 day))),'%Y%m%d')
select SUM(item_price) as month_order_fee from hello.`order` where date_format(create_time,'%Y%m%d') <= 20211115 and date_format(create_time,'%Y%m%d') >= date_add(20211115, interval - day(20211115) + 1 day);
select SUM(item_price) as month_order_fee from hello.`order` where status in (1,2) and create_time <= 20211115 and create_time >= (select date_add(20211115, interval - day(20211115) + 1 day));
select date_add(20211115, interval - day(20211115) + 1 day)

select SUM(item_price) as month_order_fee from hello.`order` where item_id in (select id from item where type=1) and status in (1,2) and create_time <= 20211115 and create_time >= (select date_add(20211115, interval - day(20211115) + 1 day));
select id from item where type=1
select * from hello.`order` where item_id in (select id from item where type=1) and status in (1,2) and create_time <= 20211115 and create_time >= (select date_add(20211115, interval - day(20211115) + 1 day));

select count(*) from hello_member where level>=2
select count(*) from hello_member where id not in (select member_id from setting where is_invisible=1) and level>=2 and is_delete=0 and create_time<= 20211115;
select member_id from setting where is_invisible=1
select * from setting where is_invisible=1

select s1.c/s2.total_uv as result from 
(select count(*) as c from hello_member where id not in (select member_id from setting where is_invisible=1) and level>=2 and is_delete=0 and create_time<= 20211115) s1,
(select count(*) as total_uv from hello_member where is_delete=0 and create_time <= 20211115) s2;

select s1.c1-s2.c2 as result from 
(SELECT  COUNT(*) as c1
FROM hello_member
WHERE id not IN ( SELECT member_id FROM setting WHERE is_invisible=1)
AND level>=2
AND is_delete=0
AND create_time<= 20211115) s1,
(SELECT  COUNT(*) as c2
FROM hello_member
WHERE id not IN ( SELECT member_id FROM setting WHERE is_invisible=1)
AND level>=2
AND is_delete=0
AND create_time<= (SELECT DATE_SUB(20211115,INTERVAL 1 DAY))) s2;

SELECT date_add(20211115,interval - day(20211115) + 1 day)
SELECT DATE_SUB(20211115,INTERVAL 1 DAY)

select count(*) from hello_member where 

select s1.c1-s2.c2 as result from 
(SELECT  COUNT(*) as c1
FROM hello_member
WHERE has_follow_wechat=1
AND create_time<= 20211115) s1,
(SELECT  COUNT(*) as c2
FROM hello_member
WHERE has_follow_wechat=1
AND create_time<= (SELECT DATE_SUB(20211115,INTERVAL 1 DAY))) s2;

SELECT *
FROM hello_member
WHERE has_follow_wechat=1
AND create_time<= 20211115

SELECT *
FROM hello.`order`
WHERE item_id IN ( SELECT id FROM item WHERE type=1)
AND status IN (1, 2)

SELECT  count(distinct member_id) AS c
FROM hello.`order`
WHERE item_id IN ( SELECT id FROM item WHERE type=1)
AND status IN (1, 2)
AND date_format(create_time, '%Y%m%d') = 20210704;

SELECT *
FROM hello.`apply_action`
where date_format(create_time, '%Y%m%d') = 20210815;

SELECT  count(distinct member_id) AS c
FROM hello.`apply_action`
where date_format(create_time, '%Y%m%d') = 20210815;

SELECT s1.increase_apply_record_pv/s2.total_uv as result from 
(SELECT  COUNT(*) AS increase_apply_record_pv
FROM hello.`apply_action`
WHERE date_format(create_time, '%Y%m%d') = 20210815) s1,
(SELECT  COUNT(*) AS total_uv
FROM hello_member
WHERE is_delete=0
AND create_time <= 20210815) s2;

select count(*) from clock_action where date_format(create_time,'%Y%m%d') = 20211121
select count(distinct visit_member_id) as increase_visitor_unlocked_uv from visit_record where is_unlocked=1 and date_format(create_time,'%Y%m%d') = 20211121

select count(*) from apply_record where apply_status=3 and date_format(create_time,'%Y%m%d') = 20211121
select count(*) from apply_action where apply_status in (1,5) and create_time <= 20210815 and create_time > (SELECT DATE_SUB(20210815,INTERVAL 7 DAY));
select * from apply_action where apply_status=3 and create_time <= 20210815 and create_time > (SELECT DATE_SUB(20210815,INTERVAL 7 DAY));

select s1.apply_agree_ratio/s2.c from 
(SELECT  COUNT(*) as apply_agree_ratio
FROM apply_action
WHERE apply_status=3
AND create_time <= 20210815
AND create_time > (
SELECT DATE_SUB(20210815,INTERVAL 7 DAY))) s1,
(SELECT  COUNT(*) as c
FROM apply_action
WHERE create_time <= 20210815
AND create_time > (
SELECT DATE_SUB(20210815,INTERVAL 7 DAY))) s2;

SELECT  COUNT(*) AS increase_apply_record_pv
FROM hello.`apply_record`
WHERE apply_status=1
AND date_format(create_time, '%Y%m%d') = 20211121;

SELECT  COUNT(*) as c
FROM apply_action
WHERE create_time <= 20210815
AND create_time > DATE_SUB(20210815,INTERVAL 7 DAY)

select s1.c1/s2.c2 as apply_agree_ratio from 
(SELECT  COUNT(*) as c1
FROM apply_action
WHERE apply_status=3
AND date_format(create_time, '%Y%m%d') <= 20210815
AND date_format(create_time, '%Y%m%d') >DATE_SUB(20210815,INTERVAL 7 DAY)) s1,
(SELECT  COUNT(*) as c2
FROM apply_action
WHERE date_format(create_time, '%Y%m%d') <= 20210815
AND date_format(create_time, '%Y%m%d') > DATE_SUB(20210815,INTERVAL 7 DAY)) s2;

SELECT *
FROM apply_action
WHERE apply_status=3
AND create_time <= 20210815
AND date_format(create_time, '%Y%m%d') >DATE_SUB(20210815,INTERVAL 7 DAY)

SELECT  
COUNT(*)                  AS increase_apply_record_pv
       ,COUNT(distinct member_id) AS increase_apply_record_uv
FROM hello.`apply_record`
WHERE apply_status=1
AND date_format(create_time, '%Y%m%d') = 20210815;

UPDATE `hello`.`statistics_day`, 
(
		SELECT  COUNT(*) AS increase_apply_record_pv
					 ,COUNT(distinct member_id) AS increase_apply_record_uv
		FROM `apply_record`
		WHERE apply_status=1
		AND date_format(create_time, '%Y%m%d') = 20210815
)as result 
SET `hello`.`statistics_day`.increase_apply_record_pv = `result`.increase_apply_record_pv,
		`hello`.`statistics_day`.increase_apply_record_uv = `result`.increase_apply_record_uv 
where ds=20210815

UPDATE `hello`.`statistics_day`
	Cross Join
(
		SELECT  COUNT(*) AS `increase_apply_record_pv`
					 ,COUNT(distinct `member_id`) AS `increase_apply_record_uv`
		FROM `hello`.`apply_record`
		WHERE `apply_status`=1
		AND date_format(`create_time`, '%Y%m%d') = 20210815
) as result 
SET `hello`.`statistics_day`.increase_apply_record_pv = `result`.increase_apply_record_pv,
		`hello`.`statistics_day`.increase_apply_record_uv = `result`.increase_apply_record_uv 
where `ds`=20210815

SELECT  COUNT(*) AS increase_apply_record_pv
       ,COUNT(distinct member_id) AS increase_apply_record_uv
FROM hello.`apply_record`
WHERE apply_status=1
AND date_format(create_time, '%Y%m%d') = 20210815

UPDATE `hello`.`statistics_day`, (SELECT  COUNT(*)                  AS increase_apply_record_pv
       ,COUNT(distinct member_id) AS increase_apply_record_uv
FROM hello.`apply_record`
WHERE apply_status=1
AND date_format(create_time, '%Y%m%d') = 20211127) AS result 
 SET `hello`.`statistics_day`.increase_apply_record_pv = result.increase_apply_record_pv,`hello`.`statistics_day`.increase_apply_record_uv = result.increase_apply_record_uv WHERE ds = 20211127;
 
 insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (11044,135,null,null,'844877',2,4,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (18954,135,null,null,'845627',2,4,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (11220,135,null,null,'844338',2,4,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (13985,135,null,null,'600060',1,4,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (18803,135,null,null,'845589',2,4,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (19890,135,null,null,'846568',2,4,1);

insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (19863,135,null,null,'846509',2,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (19843,135,null,null,'846579',1,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (18806,135,null,null,'845580',1,2,1);

insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (17394,135,null,null,'841967',1,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (16418,135,null,null,'840745',2,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (15651,135,null,null,'842024',2,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (22989,135,null,null,'142010',1,2,1);
insert into `hello`.`apply_activity_user` (member_id,apply_activity_id,order_id,coin_record_id,mid,sex,apply_status,pay_type) VALUES (10313,135,null,null,'848949',1,2,1);

UPDATE `hello`.`statistics_day`, (SELECT  COUNT(if(apply_status = 1,member_id,null))           AS increase_apply_record_pv -- 当日申请认识的次数
       ,COUNT(distinct(if(apply_status = 1,member_id,null))) AS increase_apply_record_uv -- 当日申请认识的人数
       ,COUNT(distinct(if(apply_status = 3,member_id,null))) AS increase_apply_agree_uv -- 当日同意认识的人数
FROM hello.`apply_record`
WHERE date_format(create_time, '%Y%m%d') = 20211129) AS result
 SET `hello`.`statistics_day`.increase_apply_record_pv = result.increase_apply_record_pv,`hello`.`statistics_day`.increase_apply_record_uv = result.increase_apply_record_uv,`hello`.`statistics_day`.increase_apply_agree_uv = result.increase_apply_agree_uv
 WHERE ds = 20211129
 
        ,COUNT(id) / COUNT(distinct(member_id))               AS increase_apply_average_pv -- 当日人均申请次数
				
				SELECT  if(COUNT(id)=0,0,COUNT(if(apply_status=3,id,null)) / COUNT(id)) AS apply_agree_ratio -- 近7天申请同意率
       ,if(COUNT(id)=0,0,COUNT(if(apply_status=1,id,null)) / COUNT(id)) AS apply_unread_ratio -- 近7天申请未读率
FROM apply_action
WHERE date_format(create_time, '%Y%m%d') <= 20211129
AND date_format(create_time, '%Y%m%d') > DATE_SUB(20211129, INTERVAL 7 DAY) 

SELECT  COUNT(if(apply_status = 1,member_id,null))           AS increase_apply_record_pv -- 当日申请认识的次数
       ,COUNT(distinct(if(apply_status = 1,member_id,null))) AS increase_apply_record_uv -- 当日申请认识的人数
       ,COUNT(distinct(if(apply_status = 3,member_id,null))) AS increase_apply_agree_uv -- 当日同意认识的人数
       ,if(COUNT(distinct(member_id))=0,0,COUNT(id) / COUNT(distinct(member_id)) )              AS increase_apply_average_pv -- 当日人均申请次数
FROM hello.`apply_record`
WHERE date_format(create_time, '%Y%m%d') = 20211129;

SELECT  SUM(if(status IN (1, 2) and item_id IN ( SELECT id FROM item WHERE type=1),item_price,null))            AS increase_coin_order_fee -- 当日小鱼干充值金额
       ,COUNT(distinct(if(status IN (1, 2) and item_id IN ( SELECT id FROM item WHERE type=1),member_id,null))) AS increase_coin_order_uv -- 当日小鱼干充值用户数
FROM hello.`order`
where date_format(create_time, '%Y%m%d') = 20211129;

SELECT  if(isnull(sum(item_price)), 0, sum(item_price))           AS increase_coin_order_fee -- 当日小鱼干充值金额
 
FROM hello.`order`
WHERE item_id IN ( SELECT id FROM item WHERE type=1)
AND status IN (1, 2)
AND date_format(create_time, '%Y%m%d') = 20211129;


SELECT  SUM(if(status IN (1, 2) and item_id IN ( SELECT id FROM item WHERE type=1),item_price,null))            AS increase_coin_order_fee -- 当日小鱼干充值金额
       ,COUNT(distinct(if(status IN (1, 2) and item_id IN ( SELECT id FROM item WHERE type=1),member_id,null))) AS increase_coin_order_uv -- 当日小鱼干充值用户数
FROM hello.`order`
WHERE item_id IN ( SELECT id FROM item WHERE type=1)
AND status IN (1, 2)
AND date_format(create_time, '%Y%m%d') = 20211129;

SELECT  SUM(if(status IN (1, 2) and item_id IN ( SELECT id FROM item WHERE type=1),item_price,null))            AS increase_coin_order_fee -- 当日小鱼干充值金额
       ,COUNT(distinct(if(status IN (1, 2) and item_id IN ( SELECT id FROM item WHERE type=1),member_id,null))) AS increase_coin_order_uv -- 当日小鱼干充值用户数
FROM hello.`order`
WHERE date_format(create_time, '%Y%m%d') = 20211129;

SELECT distinct visit_member_id  -- 当日访客被解锁的用户数
FROM visit_record
WHERE is_unlocked=1
AND date_format(create_time, '%Y%m%d') = 20211129;

select sum(item_price) from hello.`order` where (status = 1 or status = 2) and item_id in (7,8,9,10,11,12) and create_time between '2021-11-01' and '2021-11-30';
 (item_id=46 or item_id=47 or item_id=48 or item_id=49 or item_id=50 or item_id=51)

SELECT  until_today.until_today_pv-until_yesterday.until_yesterday_pv AS increase_wechat_follow_uv -- 服务号新增关注人数
FROM
(
	SELECT  COUNT(distinct(id)) AS until_today_pv
	FROM hello_member
	WHERE has_follow_wechat=1
	AND date_format(create_time, '%Y%m%d')<= 20211129 
) until_today, (
SELECT  COUNT(distinct(id)) AS until_yesterday_pv
FROM hello_member
WHERE has_follow_wechat=1
AND date_format(create_time, '%Y%m%d')<=DATE_SUB(20211129, INTERVAL 1 DAY)) until_yesterday;

SELECT  *
FROM hello_member
WHERE has_follow_wechat=1
AND date_format(create_time, '%Y-%m-%d')<=DATE_SUB(20211129, INTERVAL 1 DAY)

	SELECT  *
	FROM hello_member
	WHERE has_follow_wechat=1
	AND date_format(create_time, '%Y%m%d')<= 20211129 