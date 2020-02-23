## Mac zsh： command not found：mvn

### zsh 下找不到 mvn 命令

如果已经配置了maven，但是每次在终端执行 mvn 命令的时候，都必须要执行下 source ~/.bash_profile 才能生效。这是因为当 Mac 上安装了 zsh 后，.bash_profile 文件的配置无法生效。解决方案是:

``` vim ~/.zshrc```

在文件末尾加上

```source ~/.bash_profile```

这样，当 zsh 启动的时候，会读取 .bash_profile 文件的内容并使之生效。

参考：[Mac zsh： command not found：mvn](https://blog.csdn.net/u010473656/article/details/88847282)