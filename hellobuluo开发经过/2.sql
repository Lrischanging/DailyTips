SELECT  u.mid
       ,o.mid
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
left JOIN
(
	SELECT  q.apply_activity_user_id
	       ,q.select_status
	       ,j.mid
	FROM
	(
		SELECT  k.apply_activity_user_id
		       ,l.select_status
		       ,l.select_member_id
		FROM select_activity_user AS k
		JOIN select_action AS l
		ON l.activity_user_id=k.id
	) AS q
	JOIN hello_member AS j
	ON q.select_member_id=j.id
) AS o
ON o.apply_activity_user_id=u.id

UNION

SELECT  u.mid
       ,o.mid
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
left JOIN
(
	SELECT  q.apply_activity_user_id
	       ,q.select_status
	       ,j.mid
	FROM
	(
		SELECT  k.apply_activity_user_id
		       ,l.select_status
		       ,l.select_member_id
		FROM select_activity_user AS k
		JOIN select_action AS l
		ON l.activity_user_id=k.id
	) AS q
	JOIN hello_member AS j
	ON q.select_member_id=j.id
) AS o
ON o.apply_activity_user_id=u.id