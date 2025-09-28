---
title: Microsoft Activation Scripts (MAS)
description: Windows&office 激活
published: true
date: 2025-09-28T00:27:58.734Z
tags: 教程
editor: markdown
dateCreated: 2025-08-22T07:13:30.874Z
---



## 🪟 Microsoft Activation Scripts (MAS) 使用指南

开源激活工具，支持 Windows / Office 的多种激活方式：HWID、Ohook、TSforge、KMS38、Online KMS，并提供高级故障排查功能。

---

### 🚀 快速激活 Windows / Office / ESU 扩展更新

#### ❤️ 方法一：使用 PowerShell 激活

1️⃣ 打开 PowerShell  
点击开始菜单，搜索 `PowerShell` 并打开。

2️⃣ 复制并粘贴以下命令，然后回车：

- Windows 8 / 10 / 11：

```powershell
irm https://get.activated.win | iex
```

- Windows 7 及更早版本：

```powershell
iex ((New-Object Net.WebClient).DownloadString('https://get.activated.win'))
```

> 📌 如果脚本无法启动，可尝试以下命令（适用于新版 Windows 10 / 11）：  
```powershell
iex (curl.exe -s --doh-url https://1.1.1.1/dns-query https://get.activated.win | Out-String)
```
{.is-warning}

> ❗ 若仍失败，请使用 [传统激活方式](https://massgrave.dev/#method-2---traditional-windows-vista-and-later)  
{.is-danger}

3️⃣ 激活菜单将出现，选择绿色高亮选项进行激活。

4️⃣ ✅ 完成！

---

#### 🧭 方法二：传统激活方式（Vista 及以上）

1️⃣ 下载 MAS 文件：

```text
https://github.com/massgravel/Microsoft-Activation-Scripts/archive/refs/heads/master.zip
```

备用地址：

```text
https://git.activated.win/massgrave/Microsoft-Activation-Scripts/archive/master.zip
```

2️⃣ 解压文件，进入 `All-In-One-Version` 文件夹  
3️⃣ 运行 `MAS_AIO.cmd` 文件  
4️⃣ 按照屏幕提示完成激活

---

### 🛠️ 故障排查与高级功能

> 某些 ISP / DNS 会屏蔽激活域名，建议启用 [DNS-over-HTTPS (DoH)](https://developers.cloudflare.com/1.1.1.1/encryption/dns-over-https/encrypted-dns-browsers)  
{.is-info}

- 遇到问题？访问 [故障排查页面](https://massgrave.dev/troubleshoot)  
- 激活其他产品（macOS Office、Visual Studio、RDS CALs、Windows XP）：[点击查看](https://massgrave.dev/unsupported_products_activation)  
- 无人值守激活模式：[命令行参数说明](https://massgrave.dev/command_line_switches)

---

### 📊 激活方式对比表

| 激活方式     | 支持产品             | 激活时长       | 是否联网 |
|--------------|----------------------|----------------|----------|
| HWID         | Windows 10 / 11      | 永久           | ✅ 是     |
| Ohook        | Office               | 永久           | ❌ 否     |
| TSforge      | Windows / ESU / Office | 永久         | ✅ 是     |
| KMS38        | Windows 10 / 11 / Server | 到 2038 年 | ❌ 否     |
| Online KMS   | Windows / Office     | 180 天（可续期） | ✅ 是     |

---

### 📌 安全提示

> PowerShell 中的 `irm` 命令用于下载脚本，`iex` 用于执行。请务必确认链接来源可信，避免执行恶意脚本。  
{.is-warning}

---

### 🧡 最后更新

- 最新版本：v3.5（2025 年 8 月 10 日）
- GitHub / Azure DevOps / 自托管版本均可用

---

© 2025 知享 Wiki · 技术不止于探索，更在于分享 ✨  
本文参考自 [massgrave.dev](https://massgrave.dev/#method-2---traditional-windows-vista-and-later)，如有侵权请联系删除。

---

