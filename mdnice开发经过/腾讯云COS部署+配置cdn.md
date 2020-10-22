# 腾讯云COS部署 + 配置cdn

由于项目中需要图片上传的功能，所以买了腾讯云的对象存储功能，下面就记录下具体流程，希望能给xdm做些参考

## COS部署

1. 购买对象存储后，进入控制台，在对象存储中找到存储桶列表，创建存储桶，配置桶名称、地域、权限等。

![](https://files.mdnice.com/pic/7dba290b-d3b5-45d1-98a9-afe5fede7888.png)

然后，貌似就配置的差不多了。。。

那么现在找到对应的接口文档，可以开始在项目里部署了：

![](https://files.mdnice.com/pic/4039ac23-829e-4677-8709-3f5143813731.png)

2. 按照文档的要求，现在在maven文件中加入依赖：

![](https://files.mdnice.com/pic/29bf27e0-945c-493b-a53e-6c4b29191f36.png)

3. 图片上传接口：

![](https://files.mdnice.com/pic/f6896878-f23e-4601-8510-30cd548228a5.png)

4. 添加COS的配置信息类

![](https://files.mdnice.com/pic/be1f9ce3-982e-47ef-bcd3-94ece57c80c1.png)

其中的两个秘钥信息要去这里单独获取：

![](https://files.mdnice.com/pic/642fbaaf-4740-402c-ae8b-321bb42a6fd1.png)

其他的信息在配置管理中均能找到：

![](https://files.mdnice.com/pic/e901c8f6-e10e-402d-b760-9283c7308d49.png)

由于COS默认的访问域名过长，建议使用自定义域名：

![](https://files.mdnice.com/pic/b5adbb29-b990-430a-a2da-f779ffea38e6.png)

5. 经过测试，图片上传功能搞定，但是。。。图片下载速度实在不敢恭维，前端从COS加载图片的时间接近2s，速度十分感人，完全达不到业务需求，于是决定尝试下CDN。

### 配置CDN

1. 肯定要先破费咯。。。进入内容分发网络控制台，在域名管理下添加域名：

![](https://files.mdnice.com/pic/2baa343c-f63f-4bea-89a0-22c78c841a57.png)

在配置表单里填写域名等信息：

![](https://files.mdnice.com/pic/8186402c-45dd-4b0e-869c-4cfa11fe37d5.png)

2. 配置证书

![](https://files.mdnice.com/pic/fffbd927-ab6b-498b-9fb9-83444cb9fd1c.png)

注意，此处的证书内容，不仅要有cert.pem中的内容，后面还要把ca证书（即 ..chain 文件）的内容追加到证书内容后面，否则会报错“证书链错误”，这里感觉COS的文档并没有提及。

[获取证书链](https://myssl.com/chain_download.html)

3. 在添加好的域名后点击管理，进入访问控制，添加防盗链并开放端口；

![](https://files.mdnice.com/pic/7193091b-7a12-4ea4-ad9f-deb3d4011b9b.png)
![](https://files.mdnice.com/pic/da0385dd-264c-43e5-b2d5-8771ebe5e129.png)

4. 如果需要节省传输流量，可以再高级配置中，打开智能压缩：

![](https://files.mdnice.com/pic/3f8f7cf1-e541-45a0-b3b6-53a152a67e0a.png)

5. 然后返回对象存储我们刚才新建的存储桶实例中，添加自定义CDN加速域名，打开回源鉴权：

![](https://files.mdnice.com/pic/dc15993e-2c94-497c-a1ad-c76c22f66f46.png)

至此，所有的配置就都结束啦。

这个CDN的加速效果还是很明显的，配置后的图片下载速度可以达到几百ms，终于还是达到了使用标准。但就使用效果而言，腾讯的COS本身的访问速度明显不如阿里的OSS和七牛云的对象存储系统的效果好，希望能给需要使用云存储的同学一些帮助哈






