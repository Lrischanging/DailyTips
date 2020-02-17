## ohmyzsh下载被443拒绝连接

官网下载地址
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

显示
```
curl: (7) Failed to connect to raw.githubusercontent.com port 443: 拒绝连接
```

解决方法：
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

难道是官网下载地址错了？？