## github action 自动部署

### 踩坑

在master分支下的workflow配置文件中添加了只有master分支提交操作触发自动部署。用develop 分支提交时还是会触发，反复确认配置文件没有问题后，发现develop分支下有一个新的workflow配置文件，其他内容都一样，但是触发条件没有加分支要求。嗯。。。wdnmd。改了，生效。

我还以为是坑。。。果然还是我自己的问题，不同分支当然是不同项目，也就有两个workflow文件，我的智商，oh。。no！