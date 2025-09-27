---
title: 各种bash脚本
description: 
published: true
date: 2025-09-27T11:27:16.760Z
tags: linux, 脚本
editor: markdown
dateCreated: 2025-09-27T10:28:56.202Z
---

# 🧬 各种 Bash 脚本合集

欢迎来到 Bash 脚本工具集，这里收录了常用的自动化脚本，适用于 Linux 系统管理、远程登录配置、资源清理等场景。

---

## 🔐 设置 SSH 密钥登录脚本

这是一个用于配置 SSH 公钥认证的脚本，帮助你实现免密码登录远程服务器。

📁 脚本位置：[setup_ssh_key.sh](/linux/脚本/setup_ssh_key.sh)

> 部分系统禁止密码登录，其配置文件可能位于 `/etc/ssh/sshd_config.d/` 目录下。  
> 如果修改 `/etc/ssh/sshd_config` 无效，请检查该目录下是否存在覆盖配置。  
{.is-info}

---

## 📦 更多脚本即将上线

- 🧹 自动清理 Docker 镜像与容器
- 📊 系统资源监控与日志分析
- 🔄 定时任务与备份脚本

> 如果你有常用脚本想分享，欢迎提交到本页面或联系维护者。
{.is-success}

---

© 2025 知享 Wiki · 技术不止于探索，更在于分享 ✨
