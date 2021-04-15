暂存修改有两种情况：

1. 文件已经被 git 跟踪，只是修改了代码（而不是新条件文件），我们可以使用 ```git stash``` 或 git stash save "注释" 来暂存修改。

2. 如果有新添加的文件，那么就需要添加 -a 参数（如，git stash -a 或 git stash save -a "注释"），或先 git add . 然后再使用 ```git stash``` 或 ```git stash save``` "注释" 来暂存修改。

3. 当完成了变更，在开启项目，开启项目某一个暂存可以使用 ```git stash apply stash@{id}``` ，stash@{id}里面的id默认从0开始，最近的暂存为0。如果开启最近的一个暂存，则可以使用 ```git stash pop``` 或 ```git stash apply stash@{0}``` 来开启。

4. 就视觉效果来说，```git stash pop``` 和 ```git stash apply stash@{0}``` 效果是一样的，但是，在某些方面这两个命令还是有所区别的，git stash pop 开启某个修改暂存后，会在 stash list 里面将最近一次的修改暂存记录删除掉，而 git stash apply stash@{0} 则不会。

查看有多少个修改暂存，可以使用 ```git stash list``` 来查看 stash 列表。

我们也可删除修改暂存，删除某一个修改暂存，```git stash drop stash@{id}```，如果需要清空所有的修改暂存，可以使用 ```git stash clear``` 命令。