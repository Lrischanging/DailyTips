## 搭建测试服务器环境

由于要搭建测试环境，新的服务器要安装数据库和Redis，首先查看服务器的linux版本：

查看内核版本：```$ cat /proc/version```

![](https://files.mdnice.com/pic/d19a811e-063a-459c-85f1-5d573940ae93.png)

查看CentOS版本：```$ cat /etc/redhat-release```

![](https://files.mdnice.com/pic/a79ede78-6f04-482e-b3dc-88b9964f0139.png)

### 接下来安装Mysql

CentOS 7的默认yum仓库中并没有MySQL5.7，我们需要手动添加，好在MySQL官方提供了仓库的地址，所以我们能够比较简单地安装MySQL。

1. 添加Mysql5.7仓库

```rpm -ivh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm```

2. 确认Mysql仓库成功添加

```yum repolist all | grep mysql | grep enabled```

![](https://files.mdnice.com/pic/fe158212-6be9-4e23-a1e1-a910016e7567.png)

3. 安装

```yum -y install mysql-community-server```

4. 启动

```systemctl start mysqld```

自启动

```systemctl enable mysqld.service```

5. 密码问题

MySQL从5.7开始不允许首次安装后使用空密码进行登录！为了加强安全性，系统会随机生成一个密码以供管理员首次登录使用，
这个密码记录在/var/log/mysqld.log文件中，使用下面的命令可以查看此密码：

```cat /var/log/mysqld.log|grep 'A temporary password'```

![](https://files.mdnice.com/pic/88f86f21-f307-45c4-a9d5-131652430740.png)

6. 安全设置

执行下面命令进行安全设置，这个命令会进行设置root密码设置，移除匿名用户，禁止root用户远程连接等

```mysql_secure_installation```

![](https://files.mdnice.com/pic/2c2999f5-67ca-4cfb-9db1-ee1324536729.png)

7. 登陆

```mysql -p```

8. Navicat 连接 MySQL 失败 : 1130 - Host xxx is not allowed to connect to this MySQL server

因为未开启mysql远程访问权限导致

解决办法：

```
mysql>use mysql;
mysql>update user set host = '%' where user = 'root';
mysql> flush privileges;
```

ok Mysql安装完成

9. 执行sql文件

```
$ mysql -p
$ mysql>show databases; 显示所有数据库列表
$ mysql>create database mdnice;
$ mysql>use mdnice;
$ mysql>source /var/ftp/pub/mdnice.sql;

```

### 接下来安装Redis

常用的 epel-release 上的 redis 就是 3.2.12，我们要5.0.7版本

yum repo预设的版本：

```yum repolist```

没有package，于是我们使用epel repo

```yum install -y epel-release```

epel 中 redis 的版本是 3.2.12

使用 yum info 來檢視 package 詳細資訊

```yum info redis```

使用 IUS repo 安装：

```yum install -y https://repo.ius.io/ius-release-el7.rpm```

安装 Redis5

```	yum install -y redis5```

启动 Redis

```systemctl start redis```

[参考文档](https://blog.yowko.com/yum-install-redis5/)

修改 redis.conf 配置文件

```
vi redis.conf
# ①【必选】设置为后台启动：daemonize no 改为 daemonize yes【修改后：daemonize yes】
# ②【必选】设置允许远程连接：注释掉bind 127.0.0.1【修改后：# bind 127.0.0.1】，并且把protected-mode yes 改为 protected-mode no【修改后：protected-mode no】
# ③【可选】为Redis设置登录密码：取消注释# requirepass foobared，并设置自己的密码【修改后：requirepass  123456】
```

如果无法远程连接到远程Redis，记得要开启服务器的防火墙端口或开放安全组配置