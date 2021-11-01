SET SQL_SAFE_UPDATES=0;

UPDATE hello_member_pics JOIN 
(SELECT id,mid FROM hello.hello_member) tmp
ON hello_member_pics.member_id = tmp.id
SET hello_member_pics.mid = tmp.mid;

SET SQL_SAFE_UPDATES=1;