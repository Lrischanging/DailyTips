## 在国外服务器用自己的github账号clone了一个项目，回到自己电脑本地向远程代码库提交代码时报错：
```
➜  DailyTips git:(master) git push origin master
   identity_sign: private key /Users/qixinhaitang66/.ssh/id_rsa contents do not match public
   git@github.com: Permission denied (publickey).
   fatal: Could not read from remote repository.
```

暂时不知道为什么，删掉了本地的秘钥，重新生成一对，绑定github后恢复正常

```
➜  DailyTips git:(master) ssh -T git@github.com
Hi Lrischanging! You've successfully authenticated, but GitHub does not provide shell access.
```
