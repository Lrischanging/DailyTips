## swagger在登录认证过程中的处理方法

spring boot集成了swagger，但是加入了登录认证过程后，拦截器会拦截swagger的请求，导致无法访问/swagger-ui.html,于是在拦截路径中忽略了此url。结果就是。。。嗯，还是被拦截。。。

于是看一下网络请求：

![屏幕快照 2019-12-02 18.38.58](https://qiniu.mdnice.com/2c8222074c1d00f6fcd48bb26cb79119.png)

可以看到除了html路径之外，还有一些静态资源都被拦截了。那就把这些路径都加进来

![屏幕快照 2019-12-02 18.43.13](https://qiniu.mdnice.com/5e9aa9c4b013e3a464a890cfa6f9ea6f.png)

再次试验，bingo~

[参考](https://segmentfault.com/a/1190000018913038)