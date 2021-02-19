# X-Script

[![Build Status](https://travis-ci.com/sxueck/x-script.svg?branch=master)](https://travis-ci.com/sxueck/x-script)

这是一个快捷脚本仓库，包含了我个人定制或者魔改的一些基础操作，目录说明

`l`: linux  
`w`: windows  
`m`: macos  

使用方法：  
```shell
curl s.sxueck.link/l/docker -sL | bash - # 无参数
curl s.sxueck.link/l/k8s/pnode -sL | bash -s -- development # 带有传入参数
```

### 记录
* l/docker : Docker 安装脚本，默认使用阿里云作为安装源，添加阿里云作为加速镜像器
* l/k8s/pnode: 列出每个 Pods 所在的 Node
