select * from device_active_code where active_code='6206dfb5-d5dc-4ed4-babf-02f8c356f5fa';
select * from active_code where active_code='2f39087a-2e31-40ba-ba6f-6f03e1a17d23';
select * from device where device_code='b0dbb1c7-0c09-592a-a1ba-fd4e8b9e5619';

select * from active_code where user_id=8901;
select * from `mdnice`.`order` where user_id=8901

select * from device_active_code where active_code='2f39087a-2e31-40ba-ba6f-6f03e1a17d23';

select * from active_code where active_code='4fb926fb-b85f-4605-88b6-ed25bba7ec32';
select * from user where id=3432
select * from device_active_code where active_code='4fb926fb-b85f-4605-88b6-ed25bba7ec32';
select * from device where device_code='310c70c4-5de8-438b-87a5-17aab10b1d54';


SELECT  COUNT(distinct(member_id)) AS increase_ask_wechat_uv
FROM ask_wechat
WHERE date_format(ask_time, '%Y%m%d') = 20211220

SELECT  COUNT(member_id) AS increase_ask_wechat_pv,
				COUNT(distinct(member_id)) AS increase_ask_wechat_uv
FROM ask_wechat
WHERE is_delete=0 and date_format(ask_time, '%Y%m%d') = 20211220

select SUM(change_amount+change_tmp_amount) from coin_record 
where coin_item_id=39 and date_format(create_time, '%Y%m%d') = 20211220


select SUM(change_amount+change_tmp_amount) from coin_record 
where coin_item_id=15 and date_format(create_time, '%Y%m%d') = 20211220

select * from hello_member where mid='549126'

select * from ask_wechat where ask_member_id=22948


select * from hello_member where mid=142010
select a.mid,a.location_city,if(a.sex=1,'男','女') as sex,a.birthday,a.job,a.company,a.school,
a.riches_info,CASE 
									WHEN a.riches_info=1 THEN '未购车房'
									WHEN a.riches_info=2 THEN '已购车'
									WHEN a.riches_info=3 THEN '已购房'
									WHEN a.riches_info=4 THEN '已购车房'
							END
,a.annual_salary,CASE 
									WHEN a.annual_salary=1 THEN '10万以内'
									WHEN a.annual_salary=2 THEN '10万到20万'
									WHEN a.annual_salary=3 THEN '20万到30万'
									WHEN a.annual_salary=4 THEN '30万到40万'
									WHEN a.annual_salary=5 THEN '40万到50万'
									WHEN a.annual_salary=6 THEN '50万到60万'
									WHEN a.annual_salary=7 THEN '60万到70万'
									WHEN a.annual_salary=8 THEN '70万到80万'
									WHEN a.annual_salary=9 THEN '80万到120万'
									WHEN a.annual_salary=10 THEN '120万以上'
							END,a.admin_wechat,if(b.first_identity_auth=2,'通过','未通过'),if(b.first_academic_auth=2,'通过','未通过'),if(b.first_work_auth=2,'通过','未通过')
from pending as a left join hello_member_mypage as b on a.member_id=b.member_id 


select * from pending where admin_wechat='dou-04'



alter table `hello`.`apply_record` drop column `has_solved`

ALTER table `hello`.`apply_action`
ADD COLUMN  `has_solved` TINYINT(1) DEFAULT 1 COMMENT '消息是否已处理' AFTER `has_read`;
ALTER table `hello`.`apply_record`
ADD COLUMN  `has_solved` TINYINT(1) DEFAULT 1 COMMENT '消息是否已处理' AFTER `has_read`;

select * from visit_action where member_id=22989
select * from visit_action where visit_member_id=22989
select * from follow_action where member_id=22989
select * from follow_action where follow_member_id=22989
select * from apply_action where member_id=22989
select * from apply_action where apply_member_id=22989

select * from attention where member_id=22989
select * from attention where member_id=23037
select * from attention where member_id=23038

select * from hello_member where mid=23037 23038 22989
select * from hello_member where mid=531371

select * from apply_action where member_id=22989


