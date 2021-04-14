## 用redisTemplate 的 Operations存取list集合

```java
        List<Person> list = getPersonList();
        //清空
        while (redisTemplate.opsForList().size("oowwoo") > 0){
            redisTemplate.opsForList().leftPop("oowwoo");
        }
        //存储
        redisTemplate.opsForList().rightPushAll("oowwoo", list);
 
        //取出
        List<Person> oowwoo = redisTemplate.opsForList().range("oowwoo", 0, -1);
        log.info(">>>>>>>>>>>>>>>list = {}", oowwoo.toString());
        Iterator<Person> it = oowwoo.iterator();
        while(it.hasNext()){
            Person p = it.next();
            log.info("person = {}", p.toString());
        }
```