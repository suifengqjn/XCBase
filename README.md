# 5miles-ios-client
iOS repos for main app and Business app.

## 首次下载
请使用以下命令下载&更新依赖库

```
pod update --no-repo-update
``` 

目前使用了cocoapod来管理app中大量的外部依赖，Podfile中配置了workspace下多个project的依赖关系。

## Armory

公共代码库，为商户版和用户版两个app提供基础底层封装。



## Business

商户端代码，依赖于Armory工程。当我们在Armory工程添加pod时，需要同时也给Business添加上。
