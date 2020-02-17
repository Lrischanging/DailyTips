## git ：Please make sure you have the correct access rights and the repository exists

首次使用git从远程仓库clone代码到本地时，使用ssh需要在本地生成秘钥与自己的github账号进行匹配

配置自己的github昵称和邮箱：

```$ git config –global user.name “yourname”```

```$ git config –global user.email“your@email.com”```

生成本地秘钥：

```$ ssh-keygen -t rsa -C “your@email.com”```

生成秘钥后，将公钥填入github设置中的ssh keys中

再次执行clone即可成功

参考：[git 遇到问题：Please make sure you have the correct access rightsand the repository exists](https://blog.csdn.net/qq_34291777/article/details/55052201)