## git 指令

```$ git reset --soft head```
这个命令会撤销本次commit，但是修改的文件还保存着，回退后可以直接重新commit

```git reset -–hard```：
彻底回退到某个版本，本地的源码也会变为上一个版本的内容，撤销的commit中所包含的更改被冲掉；

在Git中，用```HEAD```表示当前版本，
上一个版本就是```HEAD^```，
上上一个版本就是```HEAD^^```，
当然往上100个版本写100个^比较容易数不过来，所以写成```HEAD~100```

版本号没必要写全，前几位就可以了，Git会自动去找。当然也不能只写前一两位，因为Git可能会找到多个版本号，就无法确定是哪一个了

基于某个分支开辟新的分支```$ git checkout -b newbranch```

切换分支```$ git checkout branch```

合并分支```$ git merge ```

1. [1](https://www.jianshu.com/p/0d4e62dcc62c)

2. [2](https://www.jianshu.com/p/3020740561a8)

```
    git rebase develop
    git reset --hard HEAD
    git reset --hard HEAD^
    git reset --hard HEAD 51bb3d
    git revert 51bb3d
```