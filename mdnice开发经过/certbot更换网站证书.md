由于没有足够的经费，不得已只好使用免费的通配符证书，但是通配符证书的有效期只有三个月，所以需要定期更换。接下来记录下第一次手动更换的过程，为之后配置自动部署做准备

1. 登陆服务器，certbot安装目录执行更新证书指令：
```$ sudo ./certbot-auto certonly --manual -d "*.mdnice.com" -d "mdnice.com"```

2. 接下来就根据它给出的提示一步步操作就好了

![](https://files.mdnice.com/pic/771c094b-a765-4448-b9ca-3e8b528f56b8.png)

这里提示当前ip将被公开记录为已请求此证书的ip，如果不是在你的服务器上手动运行的certbot，要注意安全。输入 y 就好了

![](https://files.mdnice.com/pic/2c6940e3-4db5-4521-84c0-1d70c80dece9.png)

这里要用给出的信息做域名解析：把主机记录、记录类型和记录值一次填入然后解析就好了

![](https://files.mdnice.com/pic/ab8cba49-badd-4f2f-86e5-9c39a176ff85.png)

![](https://files.mdnice.com/pic/c5737c9c-9c48-4568-b15c-93b34bf67f2c.png)

这里是要在给定的目录下新建一个包含它给出的字符串内容的文件。（注意这里域名后的目录要创建在前端项目的根目录中，因为访问域名代表访问前端代码嘛）完成后回车

![](https://files.mdnice.com/pic/bf4f4dcc-e96f-49ed-b6bb-e79b07629732.png)

恭喜！证书文件创建成功，并给出了保存的目录。但他给出的fullchain.pem是含有证书链 + cert文件的完整内容，我们需要更换的cert文件同样也在这个目录下，可以直接访问。

3. 将cert和privkey文件中的内容进行替换，注意复制后粘贴的时候回丢失部分第一行begin的内容，要记得检查并补全。

4. 重启nginx

```$ sudo nginx -s reload```

5. 去网站查看证书的过期时间是否更新

🆗，以上就是更换通配符证书的全部过程啦