## 解决Homebrew下载更新极慢的问题

替换brew.git

```java
cd "$(brew --repo)"
git remote set-url origin https://mirrors.aliyun.com/homebrew/brew.git
```

替换homebrew-core.git

```java
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.aliyun.com/homebrew/homebrew-core.git
```

替换homebrew-bottles

```java
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc
```

[参考文档1](https://www.raydbg.com/2019/Homebrew-Update-Slow/)

### 重置回官方源

第一步：重置brew.git

```java
cd "$(brew --repo)"
git remote set-url origin https://github.com/Homebrew/brew.git
```

第二步：重置homebrew-core.git

```java
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://github.com/Homebrew/homebrew-core.git
cd
brew update
```

第三步：注释掉bash配置文件里的有关Homebrew Bottles即可恢复官方源。 重启bash或让bash重读配置文件。

[参考文档2](https://blog.csdn.net/lwplwf/article/details/79097565)