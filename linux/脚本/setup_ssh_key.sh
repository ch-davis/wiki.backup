#!/bin/bash

# 检查是否为 root 用户
if [ "$EUID" -ne 0 ]; then
  echo "请以 root 用户运行此脚本"
  exit 1
fi

# 选择目标用户
read -p "请输入要配置 SSH 密钥登录的用户名: " target_user

# 检查用户是否存在
if ! id "$target_user" &>/dev/null; then
  echo "用户 $target_user 不存在"
  exit 1
fi

# 提示输入公钥内容
echo "请输入 SSH 公钥内容（以 ssh-rsa 或 ssh-ed25519 开头）:"
read -r ssh_key

# 创建 .ssh 目录和 authorized_keys 文件（如不存在）
user_home=$(eval echo "~$target_user")
ssh_dir="$user_home/.ssh"
auth_file="$ssh_dir/authorized_keys"

mkdir -p "$ssh_dir"
chmod 700 "$ssh_dir"
touch "$auth_file"
chmod 600 "$auth_file"

# 添加公钥
echo "$ssh_key" >> "$auth_file"
chown -R "$target_user:$target_user" "$ssh_dir"

echo "✅ 公钥已添加到 $auth_file"

# 修改 SSH 配置文件
sshd_config="/etc/ssh/sshd_config"

# 备份原始配置
cp "$sshd_config" "${sshd_config}.bak"

# 设置密钥登录并禁用密码登录
sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication no/' "$sshd_config"
sed -i 's/^#\?PubkeyAuthentication.*/PubkeyAuthentication yes/' "$sshd_config"
sed -i 's/^#\?ChallengeResponseAuthentication.*/ChallengeResponseAuthentication no/' "$sshd_config"

echo "✅ SSH 配置已更新：禁止密码登录，仅允许密钥登录"

# 重启 SSH 服务
systemctl restart ssh

echo "🎉 SSH 登录方式已更改完成，请使用密钥登录服务器"

