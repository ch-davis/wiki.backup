---
title: git 使用fatal: unable to access报错
description: 
published: true
date: 2025-09-28T01:07:24.394Z
tags: 教程, git
editor: markdown
dateCreated: 2025-07-18T05:32:36.167Z
---

<font style="color:rgb(214, 51, 132);">fatal: unable to access ' ': Failed to connect to github.com port 443</font>
  真的是最烦的东西，从开始从事编程就开始看见

<font style="color:rgb(33, 37, 41);">这个恼人的</font> <font style="color:rgb(33, 37, 41);"> </font><font style="color:rgb(214, 51, 132);">port 443</font><font style="color:rgb(33, 37, 41);"> </font><font style="color:rgb(33, 37, 41);">错误，说白了就是你的电脑跟 GitHub 服务器网络没连上。具体啥原因先放一边，咱们直接上干货，给你两个亲测有效、能让你少走弯路的办法！</font>

---

### **<font style="color:rgb(33, 37, 41);">最强解决方案：直接上GitHub Desktop，搞定99%的问题！</font>**
<font style="color:rgb(33, 37, 41);">如果你不想折腾命令行，或者对网络配置一窍不通，那 GitHub Desktop 绝对是你的首选，</font>**<font style="color:rgb(33, 37, 41);">没有之一！</font>**

+ **<font style="color:rgb(33, 37, 41);">为啥它这么牛？</font>**<font style="color:rgb(33, 37, 41);"> </font><font style="color:rgb(33, 37, 41);">GitHub Desktop 自己就能更好地处理底层网络连接和各种代理设置，它对复杂的网络环境兼容性极强。很多时候，就算命令行 Git 抽风了，它依然能稳稳当当地帮你拉取和推送代码。</font>
+ **<font style="color:rgb(33, 37, 41);">咋用？</font>**
    1. 去[<font style="color:rgb(0, 150, 94);">GitHub Desktop 官网</font>](https://link.segmentfault.com/?enc=8aCQQEOTVILdilTW%2FWeJBg%3D%3D.Y3W%2BQJDfRVOA%2BszxmXnoR3a3Z8bvVjJguOxL0Z6tEuM%3D)下载安装。
    2. 登录你的 GitHub 账号。
    3. 直接在界面里点“Clone a repository from the Internet”，粘贴你的仓库地址，选个本地目录，点“Clone”就行了。

 相信我，对大部分朋友来说，这一招就足以让你告别 <font style="color:rgb(214, 51, 132);"> port 443</font>的噩梦！我有的时候懒得操作也是用的这个，真的好用！

---

### **<font style="color:rgb(33, 37, 41);">解决方案二：手动配置Git代理（特别是用VPN/代理的朋友，这里是重点！）</font>**
如果你是命令行死忠粉，或者必须依赖 VPN/代理上网，那么手动配置 Git 代理就是你的必修课了。

<font style="color:rgb(33, 37, 41);">Git 可以通过全局配置来设置 HTTP/HTTPS 代理：

```bash
# 设置 HTTP 代理
git config --global http.proxy http://127.0.0.1:你的代理端口号

# 设置 HTTPS 代理
git config --global https://127.0.0.1:你的代理端口号
```

 **敲黑板！为什么网上很多教程你跟着做却没用？**

问题就出在那个 <font style="color:rgb(214, 51, 132);">你的代理端口号</font> 上！网上大部分教程会直接给个<font style="color:rgb(214, 51, 132);">7890</font>或者<font style="color:rgb(33, 37, 41);"> </font><font style="color:rgb(214, 51, 132);">1080</font><font style="color:rgb(33, 37, 41);">，但你的 VPN 或代理软件用的端口，很可能跟它们不一样！你不能直接抄作业。

**<font style="color:rgb(33, 37, 41);">怎么找到你自己的“专属”代理端口号？</font>**

<font style="color:rgb(33, 37, 41);">这才是解决问题的核心！通常，你的 VPN 或代理软件都会在设置界面里明明白白地告诉你它正在监听哪个端口。</font>

+ **<font style="color:rgb(33, 37, 41);">去代理工具里找：</font>**<font style="color:rgb(33, 37, 41);"> </font><font style="color:rgb(33, 37, 41);">打开你正在用的代理软件（比如 Clash、V2RayN、Shadowsocks 等），进到设置页面，找“代理端口”、“HTTP代理端口”或者类似字眼，那个数字就是你的真命天子！</font>
    - **<font style="color:rgb(33, 37, 41);">举个栗子：</font>** 我自己的代理，它的端口就是<font style="color:rgb(33, 37, 41);"> </font><font style="color:rgb(214, 51, 132);">17890</font>。所以，我的命令是这样：

```bash
git config --global http.proxy http://127.0.0.1:17890
git config --global https.proxy https://127.0.0.1:17890
```

+ **<font style="color:rgb(33, 37, 41);">从电脑系统设置里看：</font>**
    - **<font style="color:rgb(33, 37, 41);">Windows：</font>**<font style="color:rgb(33, 37, 41);"> </font><font style="color:rgb(33, 37, 41);">“设置” -\> “网络和 Internet” -\> “代理”，看看“手动设置代理”那里写的是啥端口。</font>
    - **<font style="color:rgb(33, 37, 41);">macOS：</font>**<font style="color:rgb(33, 37, 41);"> </font><font style="color:rgb(33, 37, 41);">“系统设置” -\> “网络” -\> 选中当前连接的网络服务 -\> “详细信息” -\> “代理”选项卡。</font>

<font style="color:rgb(33, 37, 41);">找到你的私人端口号，替换掉上面的</font><font style="color:rgb(33, 37, 41);"> </font><font style="color:rgb(214, 51, 132);">你的代理端口号</font><font style="color:rgb(33, 37, 41);">，再跑一遍命令，基本上问题就迎刃而解了！</font>

---

### **<font style="color:rgb(33, 37, 41);">小贴士：不用代理时，记得把它“请出去”！</font>**
<font style="color:rgb(33, 37, 41);">如果你暂时不打算用 VPN 或代理，或者发现它反而导致 Git 出了其他问题，记得用下面这些命令把代理设置清掉：</font>

```bash
# 取消 HTTP 代理设置
git config --global --unset http.proxy

# 取消 HTTPS 代理设置
git config --global --unset https.proxy
```

---

### **<font style="color:rgb(33, 37, 41);">总结：别让小问题挡住你写代码的大好前程！</font>**
<font style="color:rgb(33, 37, 41);">“连不上 GitHub”这事儿吧，看似头疼，但只要找对方法，真没那么难。无论是靠 GitHub Desktop 的“傻瓜式”操作，还是精准找到你的代理端口号，希望这些招儿能帮你顺利把代码拉下来，继续你的coding之旅！</font>

<font style="color:rgb(33, 37, 41);">你之前有没有被这个错误坑过？你是怎么解决的？或者你还知道啥神操作？欢迎在评论区里跟我分享分享呗！</font>