1. String 转 Long 两种方法区别

Long.ValueOf("String")返回Long包装类型

包装类型： Byte，Integer，Short，Long，Boolean，Character，Float，Double等

Long.parseLong("String")返回long基本数据类型

基本数据类型：byte，int， short， long， boolean，char， float，double等

2. if...else if语句：一旦其中一个 else if 语句检测为 true，其他的 else if 以及 else 语句都将跳过执行。

![](https://files.mdnice.com/pic/0dead49c-0a9d-4cd3-9a4d-67a46d6a679d.png)

3. 打包Spring Boot应用

项目根目录下：
```$ mvn clean package```

打包后在target目录下可以看到两个jar文件：其中，springboot-exec-jar-1.0-SNAPSHOT.jar.original是Maven标准打包插件打的jar包，它只包含我们自己的Class，不包含依赖，而springboot-exec-jar-1.0-SNAPSHOT.jar是Spring Boot打包插件创建的包含依赖的jar，在target文件夹下可以直接运行：
```$ java -jar springboot-exec-jar-1.0-SNAPSHOT.jar```

4. 