---
title: 在OpenWRT中安装SFTP
description: 
published: true
date: 2025-09-27T11:24:50.386Z
tags: 
editor: markdown
dateCreated: 2025-08-09T18:45:55.282Z
---

当然可以，davis！以下是你在 OpenWRT 中安装 SFTP 的完整教程，采用纯 Markdown 格式，结构清晰、语义明确，并加入了适度的 emoji 和提示块，适合在 Wiki.js 中直接使用：

---

## 📡 在 OpenWRT 中安装 SFTP 支持

本教程将指导你如何在 OpenWRT 路由器中启用 SFTP 功能，以便通过安全方式远程管理文件。

---

### 🧰 第一步：更新包管理器

确保你的路由器已连接互联网，然后运行以下命令更新软件源：

```bash
opkg update
```

> 📌 注意：如果网络未连接，`opkg update` 将无法成功。
{.is-warning}

---

### 📦 第二步：安装 SFTP 服务组件

安装 `vsftpd` 和 `openssh-sftp-server`，以启用 SFTP 支持：

```bash
opkg install vsftpd openssh-sftp-server
```

> ✅ `vsftpd` 是轻量级 FTP 服务，`openssh-sftp-server` 提供 SFTP 功能。
{.is-info}

---

### 🔄 第三步：设置服务启动并加入开机启动

执行以下命令以启动服务并设置为开机自动启动：

```bash
/etc/init.d/vsftpd enable
/etc/init.d/vsftpd start
```

> `enable` 表示加入开机启动，`start` 表示立即启动服务。
{.is-info}

---

### 🖥️ 第四步：使用 FileZilla 测试连接

你可以使用 FileZilla 或其他 SFTP 客户端进行连接：

- 主机地址：路由器的局域网 IP（如 `192.168.1.1`）
- 用户名：OpenWRT 登录用户名（如 `root`）
- 密码：对应用户密码
- 端口号：`22`
- 协议类型：SFTP

点击连接后，即可访问路由器文件系统。

---

### ✅ 总结

通过以上步骤，你已成功在 OpenWRT 中启用 SFTP 功能。此方法适用于远程文件管理、配置备份等场景，推荐配合 WinSCP、FileZilla 等工具使用。

如遇连接失败，请检查：

- 防火墙是否开放端口 22
- 用户权限是否允许远程访问
- 服务是否已成功启动

---

如果你还想扩展这个页面，比如添加 SCP 支持、配置 UCI 防火墙规则或集成 Web 文件管理器，我可以继续帮你完善。你想下一步加点什么？