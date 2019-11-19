## Disable SerializationFeature.FAIL_ON_EMPTY_BEANS

在添加完打包目录后出现执行查询出现一下错误

```
No serializer found for class org.hibernate.proxy.pojo.javassist.JavassistLazyInitializer 
and no properties discovered to create BeanSerializer 
(to avoid exception, disable SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS) 
```

搜索了这个错误，几乎全部是说‘对象json化的时候出现的错误’，解决办法是在实体类上加`@(value = {"handler","hibernateLazyInitializer","fieldHandler"})`注解。

并不好使。。。。

由于我是在加了打包文件目录后出现的问题，因此**变量**在于maven中添加的代码，检查后发现build标签中多了一个空行。

删掉之后问题解决。

我晕

## 配置文件中谨慎多余空格和空行