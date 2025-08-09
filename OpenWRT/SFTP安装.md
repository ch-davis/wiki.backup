---
title: 在OpenWRT中安装SFTP
description: 
published: true
date: 2025-08-09T18:45:55.282Z
tags: 
editor: markdown
dateCreated: 2025-08-09T18:45:55.282Z
---

# openssh-sftp-server 安装

- 更新包管理器
```bsah
opkg update
```
- 然后安装SFTP 服务
```bsah
opkg install vsftpd openssh-sftp-server
```
- 设置启动并加入开机启动
```bsah
/etc/init.d/vsftpd enable
/etc/init.d/vsftpd start
```
> enable 加入开机启动 start 启动服务
{.is-info}


我们打开连接工具,这里以Filezilla 工具为例,填写局域网ip地址,用户名,密码,端口号:22 ,点击连接,即可成功