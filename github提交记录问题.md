## git设置好了github的用户名和邮箱，提交后没有绿方块，显示的提交记录是创作者和协作者

![](https://imgkr.cn-bj.ufileos.com/58c1743c-6096-4917-9241-0e1c317f8a0b.jpg)

git log显示：

![](https://imgkr.cn-bj.ufileos.com/b7fa6331-6e90-49a5-8269-3c343f88210c.jpg)

发现邮件前面多了用户名。根据[github官方文档](https://help.github.com/cn/enterprise/2.18/user/github/committing-changes-to-your-project/creating-a-commit-with-multiple-authors)

![](https://imgkr.cn-bj.ufileos.com/47904ff0-6522-4fed-89ff-b476530d26b0.jpg)

发现是我在本地设置git邮箱时多加了个用户名，阴差阳错多了个合作者身份，所以提交记录才变成上图的情况。

```git config --global user.name "username"```

```git config --global user.email "email"```

重新设置后，问题解决~