
Spring 是一种轻量级开发框架，旨在提高开发人员的开发效率以及系统的可维护性。

### Spring 官网列出的 Spring 的 6 个特征:

1. 核心技术 ：依赖注入(DI)，AOP，事件(events)，资源，i18n，验证，数据绑定，类型转换，SpEL。
2. 测试 ：模拟对象，TestContext框架，Spring MVC 测试，WebTestClient。
3. 数据访问 ：事务，DAO支持，JDBC，ORM，编组XML。
4. Web支持 : Spring MVC和Spring WebFlux Web框架。
5. 集成 ：远程处理，JMS，JCA，JMX，电子邮件，任务，调度，缓存。
6. 语言 ：Kotlin，Groovy，动态语言。

### Spring主要模块

1. Spring Core： 基础,可以说 Spring 其他所有的功能都需要依赖于该类库。主要提供 IOC 依赖注入功能。
2. Spring Aspects ： 该模块为与AspectJ的集成提供支持。
3. Spring AOP ：提供了面向方面的编程实现。
4. Spring JDBC : Java数据库连接。
5. Spring JMS ：Java消息服务。
6. Spring ORM : 用于支持Hibernate等ORM工具。 
7. Spring Web : 为创建Web应用程序提供支持。
8. Spring Test : 提供了对 JUnit 和 TestNG 测试的支持。

### IOC

IoC（Inverse of Control:控制反转）是一种设计思想，就是 将原本在程序中手动创建对象的控制权，交由Spring框架来管理。 IoC 在其他语言中也有应用，并非 Spirng 特有。 IoC 容器是 Spring 用来实现 IoC 的载体， IoC 容器实际上就是个Map（key，value）,Map 中存放的是各种对象。

将对象之间的相互依赖关系交给 IOC 容器来管理，并由 IOC 容器完成对象的注入。这样可以很大程度上简化应用的开发，把应用从复杂的依赖关系中解放出来。 IOC 容器就像是一个工厂一样，当我们需要创建一个对象的时候，只需要配置好配置文件/注解即可，完全不用考虑对象是如何被创建出来的。 在实际项目中一个 Service 类可能有几百甚至上千个类作为它的底层，假如我们需要实例化这个 Service，你可能要每次都要搞清这个 Service 所有底层类的构造函数，这可能会把人逼疯。如果利用 IOC 的话，你只需要配置好，然后在需要的地方引用就行了，这大大增加了项目的可维护性且降低了开发难度。