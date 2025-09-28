---
title: Windows 下Git 如何使用
description: 
published: true
date: 2025-09-28T00:29:45.814Z
tags: 教程, git
editor: markdown
dateCreated: 2025-07-18T10:46:57.485Z
---

当然可以，davis！你这篇页面是关于「Windows 下 Git 使用帮助」，内容非常专业，结构也很清晰，但排版上可以进一步美化，让它更易读、更有层次感。下面是我为你重新整理的完整 Markdown 代码，专为 Wiki.js 优化，包含：

- 清晰的分节结构  
- 命令块与说明分离  
- 提示块（`.is-info`、`.is-warning`）增强可读性  
- 表格展示对比信息  
- Emoji 引导视觉节奏  

---

## 🧬 Git 与 GitHub 协作指南（最终修订版）

**报告生成日期：** 2025 年 7 月 15 日  
**版本：** 5.0（最终修订版）  
**摘要：** 本指南旨在提供一份结构清晰、格式专业的 Git 与 GitHub 操作手册。所有指令均以独立代码块展示，后附详细说明，适合开发者长期参考与实践。

---

## 🧰 第一部分：基础环境准备（一次性设置）

### 1️⃣ 安装与配置 Git

- 安装 Git：前往 [git-scm.com/downloads](https://git-scm.com/downloads) 下载并安装  
- 验证安装：

```bash
git --version
```

> 用于检查 Git 是否成功安装  
{.is-info}

- 配置用户信息：

```bash
git config --global user.name "你的英文名或代号"
git config --global user.email "你的电子邮件地址"
```

> `--global` 表示全局配置，适用于所有项目  
{.is-info}

---

### 2️⃣ 获取并保存个人访问令牌（PAT）

#### 🔐 什么是 PAT？

个人访问令牌是一串代表你身份的字符串，相当于一个专用密码。相比账户密码，它具备：

- ✅ 可撤销性  
- ✅ 权限可控性  
- ✅ 过期时间设定  

---

#### 🧪 PAT 类型对比

| 特性             | ✅ 精细化令牌（推荐） | ⚠️ 经典令牌 |
|------------------|----------------------|-------------|
| 安全性           | 更高                 | 较低        |
| 权限控制         | 可限制到特定仓库     | 所有仓库    |
| 权限粒度         | 细致（如只读代码）   | 粗略（如全权限） |
| 过期时间         | 必须设置              | 可选        |
| 适用场景         | 现代应用场景         | 某些旧工具  |

> 除非工具要求使用 Classic，否则请优先选择 Fine-grained token  
{.is-warning}

---

#### 🛠️ 获取 PAT 的步骤

1. 登录 GitHub，点击右上角头像 → Settings  
2. 左侧菜单底部 → Developer settings  
3. 展开 Personal access tokens → Fine-grained tokens  
4. 点击 Generate new token  
5. 配置令牌属性：

- Token name：如 “My Laptop Git Push”  
- Expiration：建议 30 或 90 天  
- Repository access：推荐选择 “Only select repositories”  
- Permissions：至少授予 `Contents: Read and write` 权限

6. 点击 Generate token 并复制令牌（GitHub 只显示一次）

---

#### 🧪 使用 PAT 登录 GitHub

执行 `git push` 或 `git pull` 时，系统会提示：

```bash
Username for 'https://github.com': your-github-username  
Password for 'https://your-github-username@github.com': [粘贴 PAT]
```

> 屏幕不显示字符是正常的安全措施  
{.is-info}

---

## 🚀 第二部分：首次推送新项目

### 1️⃣ 创建远程仓库

- 登录 GitHub → 点击 “New repository”  
- 填写仓库名，保持空白（不要勾选 README）

---

### 2️⃣ 初始化本地仓库

```bash
cd /path/to/your/project
git init
git add .
git commit -m "Initial commit"
```

> `git init` 创建本地仓库，`git add .` 添加所有文件，`git commit` 提交快照  
{.is-info}

---

### 3️⃣ 连接远程仓库并推送

```bash
git remote add origin https://github.com/YourUsername/YourRepoName.git
git branch -M main
git push -u origin main
```

> `-u` 建立追踪关系，未来可简化为 `git push`  
{.is-info}

---

## 🔄 第三部分：日常更新与推送

```bash
git add .
git commit -m "更新说明"
git push
```

> 日常开发流程：添加 → 提交 → 推送  
{.is-info}

---

## 📌 第四部分：核心要点与注意事项

- 🔄 推送前先拉取：`git pull`  
- 🔍 查看状态：`git status`  
- 📁 忽略文件：使用 `.gitignore`  
- 📝 提交信息：保持清晰、简洁、可维护

---

© 2025 知享 Wiki · 技术不止于探索，更在于分享 ✨

---

如果你想为这个页面加顶部目录、折叠模块或卡片导航，我可以继续帮你扩展。要不要我再帮你做一个 Git 工具集导航页？