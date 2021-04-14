## SpringBoot 项目打包后运行报 org.apache.ibatis.binding.BindingException

springboot项目打包运行报错，mybatis绑定错误，在检查了db流程后发现没有问题。于是打开打包的jar文件，发现mapper下的xml文件没有被打包。

原因是springboot会默认把src/main/resource目录下的配置文件打包进去，而其他目录下则不会。

解决办法是，在maven的build下添加要打包的配置文件目录。

```java
        <!-- 如果不添加此节点mybatis的mapper.xml文件都会被漏掉。 -->
        <resources>
            <resource>
                <directory>src/main/java</directory>
                <includes>
                    <include>**/*.properties</include>
                    <include>**/*.xml</include>
                </includes>
                <filtering>false</filtering>
            </resource>
            <resource>
                <directory>src/main/resources</directory>
                <includes>
                    <include>**/*.properties</include>
                    <include>**/*.xml</include>
                </includes>
                <filtering>false</filtering>
            </resource>
        </resources>
```

ok~问题解决

[详见](https://www.cnblogs.com/wbxk/p/8482502.html)