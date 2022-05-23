SELECT  u.mid
       ,u.pay_type
       ,i.change_amount
       ,i.change_tmp_amount
FROM
(
	SELECT  *
	FROM apply_activity_user AS y
	WHERE y.apply_activity_id=93
	AND y.member_id not IN ( SELECT member_id FROM select_action WHERE select_activity_id=4 AND select_status in (1,3,4)) 
) AS u
JOIN `hello`.`coin_record` AS i
ON u.coin_record_id=i.id


UNION

SELECT  u.mid
       ,u.pay_type
       ,i.item_price
FROM
(
	SELECT  *
	FROM apply_activity_user AS y
	WHERE y.apply_activity_id=93
	AND y.member_id not IN ( SELECT member_id FROM select_action WHERE select_activity_id=4 AND select_status in (1,3,4)) 
) AS u
JOIN `hello`.`order` AS i
ON u.order_id=i.id
